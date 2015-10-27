Shader "浅墨Shader编程/3.光照材质完备正式版Shader"
{
	Properties
	{
		_Color("主颜色",Color) = (1,1,1,0)
		_SpecColor("反射高光颜色",Color) = (1,1,1,1)
		_Emission("自发光颜色",Color) = (0,0,0,0)
		_Shininess("光泽度",Range(0.01,1)) = 0.7
		_MainTex("基本纹理",2D)="white"{}
	}
	
	SubShader
	{
		Pass
		{
			Material
			{	
				Diffuse[_Color]
				Ambient[_Color]
				Shininess[_Shininess]
				Specular[_Specular]
				Emission[_Emission]
				
			}
			Lighting on
			
			SeparateSpecular On 
			
			SetTexture[_MainTex]
			{
				Combine texture*primary DOUBLE, texture*primary
			}
		}
	}
	
}