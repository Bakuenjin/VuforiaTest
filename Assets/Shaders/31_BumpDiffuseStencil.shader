Shader "RanellStudios/BumpDiffuseStencil" {
	Properties {
		_Color ("Main Color", Color) = (1,1,1,1)
		_MyDiffuse ("Diffuse Texture", 2D) = "white" {}
		_MyBump ("Bump Texture", 2D) = "bump" {}
		_MySlider ("Bump Amount", Range(0, 10)) = 1 
		
		_SRef ("Steincil Ref", Float) = 1
		[Enum(UnityEngine.Rendering.CompareFunction)] _SComp ("Stencil Comp", Float) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _SOp ("Stencil Op", Float) = 2
	}
	SubShader {

		Stencil {
			Ref [_SRef]
			Comp [_SComp]
			Pass [_SOp]
		}

		CGPROGRAM
		#pragma surface surf Lambert

		float4 _Color;
		sampler2D _MyDiffuse;
		sampler2D _MyBump;
		float _MySlider;


		struct Input {
			float2 uv_MyDiffuse;
			float2 uv_MyBump;
		};

		void surf(Input IN, inout SurfaceOutput o) {
			o.Albedo = tex2D(_MyDiffuse, IN.uv_MyDiffuse).rgb;
			o.Normal = UnpackNormal(tex2D(_MyBump, IN.uv_MyBump));
			o.Normal *= float3(_MySlider, _MySlider, 1);
		}
		ENDCG
	}
	FallBack "Diffuse"
}
