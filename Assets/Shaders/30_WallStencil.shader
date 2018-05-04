Shader "RanellStudios/WallStencil" {
	Properties {
		_Color ("Main Color", Color) = (1,1,1,1)
		_SRef ("Steincil Ref", Float) = 1
		[Enum(UnityEngine.Rendering.CompareFunction)] _SComp ("Stencil Comp", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _SOp ("Stencil Op", Float) = 2
	}
	SubShader {
		Tags { "RenderType"="Geometry" }

		ZWrite off
		ColorMask 0

		Stencil {
			Ref [_SRef]
			Comp [_SComp]
			Pass [_SOp]
		}

		CGPROGRAM
		#pragma surface surf Lambert

		sampler2D _MyDiffuse;

		struct Input {
			float2 uv_MyDiffuse;
		};

		void surf(Input IN, inout SurfaceOutput o) {
			o.Albedo = tex2D(_MyDiffuse, IN.uv_MyDiffuse).rgb;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
