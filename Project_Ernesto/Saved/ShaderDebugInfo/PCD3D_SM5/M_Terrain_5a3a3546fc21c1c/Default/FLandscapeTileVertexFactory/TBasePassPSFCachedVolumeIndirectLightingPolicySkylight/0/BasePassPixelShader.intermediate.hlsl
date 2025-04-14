#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _206 = 0.0f.xxx;
static float4 _209 = 0.0f.xxxx;

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
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c193.y);
    float4 View_View_SkyLightColor : packoffset(c194);
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

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
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

cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c151);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
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
    float4 _247 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _251 = mad(float2(_247.zw), 2.0f.xx, (-1.0f).xx);
    float _255 = sqrt(max(1.0f - dot(_251, _251), 0.0f));
    float _256 = _251.x;
    float3 _258 = float3(_256, _251.y, _255);
    float3 _261 = normalize(float3(_255, 0.0f, -_256));
    float4 _278 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _282 = _278.xyz / _278.w.xxx;
    float3 _283 = _282 - View_View_RelativePreViewTranslationTO;
    precise float3 _75 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _283);
    precise float3 _78 = _283 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _75);
    float4 _287 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _312 = float2(mad(in_var_TEXCOORD0.x, Material_Material_PreshaderBuffer[4].x, Material_Material_PreshaderBuffer[4].y), mad(in_var_TEXCOORD0.y, Material_Material_PreshaderBuffer[4].z, Material_Material_PreshaderBuffer[4].w));
    float2 _320 = mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _329 = dot(_287, Material_Material_PreshaderBuffer[0]).xxx;
    float2 _335 = mad(Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _344 = dot(_287, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _352 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _361 = dot(_287, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _368 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _312, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _377 = dot(_287, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _389 = normalize(mul(normalize(((mad(float4(_368, sqrt(clamp(1.0f - dot(_368, _368), 0.0f, 1.0f)), 1.0f).xyz, _377, mad(float4(_352, sqrt(clamp(1.0f - dot(_352, _352), 0.0f, 1.0f)), 1.0f).xyz, _361, mad(float4(_320, sqrt(clamp(1.0f - dot(_320, _320), 0.0f, 1.0f)), 1.0f).xyz, _329, float4(_335, sqrt(clamp(1.0f - dot(_335, _335), 0.0f, 1.0f)), 1.0f).xyz * _344))) * Material_Material_PreshaderBuffer[5].x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_261, cross(_258, _261), _258), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _390 = _389 * 1.0f;
    float4 _401 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _406 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _413 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _419 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _425 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _430 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _437 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _443 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _312, View_View_MaterialTextureMipBias);
    float3 _445 = mad(_443.xyz, _377, mad(_437.xyz, _361, mad(_425.xyz, _329, _430.xyz * _344)));
    float3 _449 = clamp(mad(_419.xyz, _377, mad(_413.xyz, _361, mad(_401.xyz, _329, _406.xyz * _344))), 0.0f.xxx, 1.0f.xxx);
    float _450 = clamp(_445.z, 0.0f, 1.0f);
    float _454 = mad(clamp(_445.y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _455 = clamp(_445.x, 0.0f, 1.0f);
    float _499 = 0.0f;
    float _500 = 0.0f;
    float _501 = 0.0f;
    float3 _502 = 0.0f.xxx;
    float3 _503 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _470 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _474 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _470, 0.0f);
        float4 _477 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _470, 0.0f);
        float4 _480 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _470, 0.0f);
        float _490 = _480.w;
        _499 = mad(_454, _490, _480.z);
        _500 = mad(0.5f, _490, _480.y);
        _501 = mad(_450, _490, _480.x);
        _502 = (_449 * _474.w) + _474.xyz;
        _503 = normalize((_390 * _477.w) + ((_477.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _499 = _454;
        _500 = 0.5f;
        _501 = _450;
        _502 = _449;
        _503 = _390;
    }
    bool _516 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _522 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _516)
    {
        _522 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _522 = 1.0f;
    }
    float _569 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _537 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _283, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _548 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_537.x), int(_537.y), int(_537.z), 0).xyz, 0)));
        _569 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_548.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_537 / _548.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _569 = _522;
    }
    float3 _582 = ((_502 - (_502 * _501)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _589 = (lerp((0.07999999821186065673828125f * _500).xxx, _502, _501.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _592 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _597 = 0.0f.xxx;
    if (_592)
    {
        _597 = _582 + (_589 * 0.449999988079071044921875f);
    }
    else
    {
        _597 = _582;
    }
    bool3 _598 = _592.xxx;
    float3 _599 = float3(_598.x ? 0.0f.xxx.x : _589.x, _598.y ? 0.0f.xxx.y : _589.y, _598.z ? 0.0f.xxx.z : _589.z);
    float3 _601 = dot(_599, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _608 = _455.xxx;
    float3 _677 = 0.0f.xxx;
    if (_516)
    {
        float3 _629 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _283, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _633 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _629);
        float4 _637 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _629);
        float4 _640 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _629);
        float4 _658 = 0.0f.xxxx;
        _658.y = (-0.48860299587249755859375f) * _503.y;
        _658.z = 0.48860299587249755859375f * _503.z;
        _658.w = (-0.48860299587249755859375f) * _503.x;
        _658.x = 0.886227548122406005859375f;
        float3 _667 = _658.yzw * 2.094395160675048828125f;
        float4 _668 = float4(_658.x, _667.x, _667.y, _667.z);
        float3 _670 = 0.0f.xxx;
        _670.x = dot(float4(_633.x, _637.x, _640.x, _633.w), _668);
        _670.y = dot(float4(_633.y, _637.y, _640.y, _637.w), _668);
        _670.z = dot(float4(_633.z, _637.z, _640.zw), _668);
        _677 = max(0.0f.xxx, _670) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _677 = 0.0f.xxx;
    }
    float3 _755 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _707 = 0.0f;
        float _708 = 0.0f;
        float3 _709 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _697 = 0.0f.xxx;
            float _698 = 0.0f;
            if (_516)
            {
                _697 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _698 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _697 = _503;
                _698 = 1.0f;
            }
            float _701 = mad(_698 - 1.0f, 1.0f - _698, 1.0f);
            _707 = lerp(clamp(dot(_697, _503), 0.0f, 1.0f), 1.0f, _701);
            _708 = _698;
            _709 = lerp(_697, _503, _701.xxx);
        }
        else
        {
            _707 = 1.0f;
            _708 = 1.0f;
            _709 = _503;
        }
        float4 _713 = float4(_709, 1.0f);
        float3 _717 = 0.0f.xxx;
        _717.x = dot(View_SkyIrradianceEnvironmentMap[0u], _713);
        _717.y = dot(View_SkyIrradianceEnvironmentMap[1u], _713);
        _717.z = dot(View_SkyIrradianceEnvironmentMap[2u], _713);
        float4 _728 = _713.xyzz * _713.yzzx;
        float3 _732 = 0.0f.xxx;
        _732.x = dot(View_SkyIrradianceEnvironmentMap[3u], _728);
        _732.y = dot(View_SkyIrradianceEnvironmentMap[4u], _728);
        _732.z = dot(View_SkyIrradianceEnvironmentMap[5u], _728);
        _755 = (max(0.0f.xxx, (_717 + _732) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_709.x, _709.x, -(_709.y * _709.y)))) * View_View_SkyLightColor.xyz) * (_708 * _707);
    }
    else
    {
        _755 = 0.0f.xxx;
    }
    float3 _756 = mad(_677, View_View_PrecomputedIndirectLightingColorScale, _755);
    float3 _777 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _835 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _79 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _80 = _79 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _81 = _80 - _79;
        precise float3 _82 = Primitive_Primitive_ObjectWorldPositionLow - _81;
        precise float3 _83 = _75 - _80;
        precise float3 _84 = _78 - _82;
        precise float3 _85 = _83 + _84;
        float3 _797 = abs(_85);
        float3 _798 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _834 = 0.0f.xxx;
        if (any(bool3(_797.x > _798.x, _797.y > _798.y, _797.z > _798.z)))
        {
            float3 _830 = frac(dot(frac(frac(_75 * 1.52587890625e-05f.xxx) + frac(_78 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _834 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_830.x > 0.5f.xxx.x, _830.y > 0.5f.xxx.y, _830.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _820 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _808 = abs(_282 - in_var_TEXCOORD9);
                _820 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_808.x, max(_808.y, _808.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _820 = _777;
            }
            _834 = _820;
        }
        _835 = _834;
    }
    else
    {
        _835 = _777;
    }
    float4 _842 = float4((mad(_756 * _597, max(_608, ((((((_502 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _455) + ((_502 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _455) + ((_502 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _455), lerp(0.0f.xxx, _597 + (_599 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _835) * 1.0f, 0.0f);
    float4 _853 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _852 = _842;
        _852.w = 0.0f;
        _853 = _852;
    }
    else
    {
        _853 = _842;
    }
    float2 _858 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _873 = (_503 * 0.5f) + 0.5f.xxx;
    float4 _875 = 0.0f.xxxx;
    _875.x = _873.x;
    _875.y = _873.y;
    _875.z = _873.z;
    _875.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _882 = 0.0f.xxxx;
    _882.x = _502.x;
    _882.y = _502.y;
    _882.z = _502.z;
    _882.w = mad(frac(dot(_858.xyx * _858.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_756, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(_608, ((((((_601 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _455) + ((_601 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _455) + ((_601 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _455).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _888 = 0.0f.xxxx;
    _888.x = _569;
    _888.y = 1.0f;
    _888.z = 1.0f;
    _888.w = 1.0f;
    float4 _893 = _853 * View_View_PreExposure;
    float3 _895 = min(_893.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_895.x, _895.y, _895.z, _893.w);
    out_var_SV_Target1 = _875;
    out_var_SV_Target2 = float4(_501, _500, _499, 0.50588238239288330078125f);
    out_var_SV_Target3 = _882;
    out_var_SV_Target5 = _888;
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
