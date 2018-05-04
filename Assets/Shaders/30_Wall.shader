Shader "RanellStudios/Wall" {
	Properties {
		_MainTex ("Diffuse", 2D) = "white" {}
		_StencilVal ("Stencil Value", float) = 0
	}
	SubShader {
		Tags { "RenderType"="Geometry" }

		Stencil {
			Ref 1
			Comp notequal
			Pass keep
		}

		CGPROGRAM
		#pragma surface surf Lambert

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutput o) {
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
