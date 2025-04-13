#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _199 = 0.0f.xxxx;

cbuffer View
{
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c109);
    float3 View_View_RelativePreViewTranslationTO : packoffset(c112);
    float4 View_View_BufferSizeAndInvSize : packoffset(c139);
    float View_View_PreExposure : packoffset(c143.z);
    float4 View_View_DiffuseOverrideParameter : packoffset(c144);
    float4 View_View_SpecularOverrideParameter : packoffset(c145);
    float4 View_View_NormalOverrideParameter : packoffset(c146);
    float2 View_View_RoughnessOverrideParameter : packoffset(c147);
    float View_View_OutOfBoundsMask : packoffset(c148);
    float View_View_MaterialTextureMipBias : packoffset(c151);
    float View_View_UnlitViewmodeMask : packoffset(c153.z);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c166);
    float View_View_RenderingReflectionCaptureMask : packoffset(c190.w);
    float View_View_ShowDecalsMask : packoffset(c204.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c236.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c243);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c244);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c245);
    float View_View_VolumetricLightmapBrickSize : packoffset(c245.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c246);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c246.w);
    float View_View_bSubsurfacePostprocessEnabled : packoffset(c257.w);
};

cbuffer Primitive
{
    uint Primitive_Primitive_Flags : packoffset(c0);
    float Primitive_Primitive_ObjectBoundsX : packoffset(c22.w);
    float4 Primitive_Primitive_ObjectWorldPositionHighAndRadius : packoffset(c23);
    float3 Primitive_Primitive_ObjectWorldPositionLow : packoffset(c24);
    float Primitive_Primitive_ObjectBoundsY : packoffset(c31.w);
    float Primitive_Primitive_ObjectBoundsZ : packoffset(c32.w);
    float Primitive_Primitive_MaxWPOExtent : packoffset(c37.z);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[7] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;
Texture2D<float4> Material_Texture2D_11;
SamplerState Material_Texture2D_11Sampler;
Texture2D<float4> Material_Texture2D_12;
SamplerState Material_Texture2D_12Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static float4 in_var_TEXCOORD2;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;
static float4 out_var_SV_Target3;
static float4 out_var_SV_Target5;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
    float4 out_var_SV_Target3 : SV_Target3;
    float4 out_var_SV_Target5 : SV_Target5;
};

void frag_main()
{
    float4 _235 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _239 = mad(float2(_235.zw), 2.0f.xx, (-1.0f).xx);
    float _243 = sqrt(max(1.0f - dot(_239, _239), 0.0f));
    float _244 = _239.x;
    float3 _246 = float3(_244, _239.y, _243);
    float3 _249 = normalize(float3(_243, 0.0f, -_244));
    float4 _266 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _270 = _266.xyz / _266.w.xxx;
    float3 _271 = _270 - View_View_RelativePreViewTranslationTO;
    precise float3 _70 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _271);
    precise float3 _73 = _271 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _70);
    float4 _275 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _300 = float2(mad(in_var_TEXCOORD0.x, Material_Material_PreshaderBuffer[4].x, Material_Material_PreshaderBuffer[4].y), mad(in_var_TEXCOORD0.y, Material_Material_PreshaderBuffer[4].z, Material_Material_PreshaderBuffer[4].w));
    float2 _308 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _300, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _317 = dot(_275, Material_Material_PreshaderBuffer[0]).xxx;
    float2 _323 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _300, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _332 = dot(_275, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _340 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _300, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _349 = dot(_275, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _356 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _300, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _365 = dot(_275, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _377 = normalize(mul(normalize(((mad(float4(_356, sqrt(clamp(1.0f - dot(_356, _356), 0.0f, 1.0f)), 1.0f).xyz, _365, mad(float4(_340, sqrt(clamp(1.0f - dot(_340, _340), 0.0f, 1.0f)), 1.0f).xyz, _349, mad(float4(_308, sqrt(clamp(1.0f - dot(_308, _308), 0.0f, 1.0f)), 1.0f).xyz, _317, float4(_323, sqrt(clamp(1.0f - dot(_323, _323), 0.0f, 1.0f)), 1.0f).xyz * _332))) * Material_Material_PreshaderBuffer[5].x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_249, cross(_246, _249), _246), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _378 = _377 * 1.0f;
    float4 _389 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _394 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _401 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _407 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _413 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _418 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _425 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _300, View_View_MaterialTextureMipBias);
    float4 _431 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _300, View_View_MaterialTextureMipBias);
    float3 _433 = mad(_431.xyz, _365, mad(_425.xyz, _349, mad(_413.xyz, _317, _418.xyz * _332)));
    float3 _437 = clamp(mad(_407.xyz, _365, mad(_401.xyz, _349, mad(_389.xyz, _317, _394.xyz * _332))), 0.0f.xxx, 1.0f.xxx);
    float _438 = clamp(_433.z, 0.0f, 1.0f);
    float _442 = mad(clamp(_433.y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _443 = clamp(_433.x, 0.0f, 1.0f);
    float _487 = 0.0f;
    float _488 = 0.0f;
    float _489 = 0.0f;
    float3 _490 = 0.0f.xxx;
    float3 _491 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _458 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _462 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _458, 0.0f);
        float4 _465 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _458, 0.0f);
        float4 _468 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _458, 0.0f);
        float _478 = _468.w;
        _487 = mad(_442, _478, _468.z);
        _488 = mad(0.5f, _478, _468.y);
        _489 = mad(_438, _478, _468.x);
        _490 = (_437 * _462.w) + _462.xyz;
        _491 = normalize((_378 * _465.w) + ((_465.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _487 = _442;
        _488 = 0.5f;
        _489 = _438;
        _490 = _437;
        _491 = _378;
    }
    bool _504 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _510 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _504)
    {
        _510 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _510 = 1.0f;
    }
    float _557 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _525 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _271, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _536 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_525.x), int(_525.y), int(_525.z), 0).xyz, 0)));
        _557 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_536.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_525 / _536.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _557 = _510;
    }
    float3 _570 = ((_490 - (_490 * _489)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _577 = (lerp((0.07999999821186065673828125f * _488).xxx, _490, _489.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _580 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _585 = 0.0f.xxx;
    if (_580)
    {
        _585 = _570 + (_577 * 0.449999988079071044921875f);
    }
    else
    {
        _585 = _570;
    }
    bool3 _586 = _580.xxx;
    float3 _587 = float3(_586.x ? 0.0f.xxx.x : _577.x, _586.y ? 0.0f.xxx.y : _577.y, _586.z ? 0.0f.xxx.z : _577.z);
    float3 _589 = dot(_587, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _596 = _443.xxx;
    float3 _665 = 0.0f.xxx;
    if (_504)
    {
        float3 _617 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _271, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _621 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _617);
        float4 _625 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _617);
        float4 _628 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _617);
        float4 _646 = 0.0f.xxxx;
        _646.y = (-0.48860299587249755859375f) * _491.y;
        _646.z = 0.48860299587249755859375f * _491.z;
        _646.w = (-0.48860299587249755859375f) * _491.x;
        _646.x = 0.886227548122406005859375f;
        float3 _655 = _646.yzw * 2.094395160675048828125f;
        float4 _656 = float4(_646.x, _655.x, _655.y, _655.z);
        float3 _658 = 0.0f.xxx;
        _658.x = dot(float4(_621.x, _625.x, _628.x, _621.w), _656);
        _658.y = dot(float4(_621.y, _625.y, _628.y, _625.w), _656);
        _658.z = dot(float4(_621.z, _625.z, _628.zw), _656);
        _665 = max(0.0f.xxx, _658) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _665 = 0.0f.xxx;
    }
    float3 _668 = _665 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _689 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _747 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _74 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _75 = _74 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _76 = _75 - _74;
        precise float3 _77 = Primitive_Primitive_ObjectWorldPositionLow - _76;
        precise float3 _78 = _70 - _75;
        precise float3 _79 = _73 - _77;
        precise float3 _80 = _78 + _79;
        float3 _709 = abs(_80);
        float3 _710 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _746 = 0.0f.xxx;
        if (any(bool3(_709.x > _710.x, _709.y > _710.y, _709.z > _710.z)))
        {
            float3 _742 = frac(dot(frac(frac(_70 * 1.52587890625e-05f.xxx) + frac(_73 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _746 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_742.x > 0.5f.xxx.x, _742.y > 0.5f.xxx.y, _742.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _732 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _720 = abs(_270 - in_var_TEXCOORD9);
                _732 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_720.x, max(_720.y, _720.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _732 = _689;
            }
            _746 = _732;
        }
        _747 = _746;
    }
    else
    {
        _747 = _689;
    }
    float4 _754 = float4((mad(_668 * _585, max(_596, ((((((_490 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _443) + ((_490 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _443) + ((_490 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _443), lerp(0.0f.xxx, _585 + (_587 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _747) * 1.0f, 0.0f);
    float4 _765 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _764 = _754;
        _764.w = 0.0f;
        _765 = _764;
    }
    else
    {
        _765 = _754;
    }
    float2 _770 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _785 = (_491 * 0.5f) + 0.5f.xxx;
    float4 _787 = 0.0f.xxxx;
    _787.x = _785.x;
    _787.y = _785.y;
    _787.z = _785.z;
    _787.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _794 = 0.0f.xxxx;
    _794.x = _490.x;
    _794.y = _490.y;
    _794.z = _490.z;
    _794.w = mad(frac(dot(_770.xyx * _770.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_668, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(_596, ((((((_589 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _443) + ((_589 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _443) + ((_589 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _443).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _800 = 0.0f.xxxx;
    _800.x = _557;
    _800.y = 1.0f;
    _800.z = 1.0f;
    _800.w = 1.0f;
    float4 _805 = _765 * View_View_PreExposure;
    float3 _807 = min(_805.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_807.x, _807.y, _807.z, _805.w);
    out_var_SV_Target1 = _787;
    out_var_SV_Target2 = float4(_489, _488, _487, 0.50588238239288330078125f);
    out_var_SV_Target3 = _794;
    out_var_SV_Target5 = _800;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target5 = out_var_SV_Target5;
    return stage_output;
}
