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
    float3 _368 = dot(_287, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _380 = normalize(mul(normalize(((mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _312, View_View_MaterialTextureMipBias).xyz, _368, mad(float4(_352, sqrt(clamp(1.0f - dot(_352, _352), 0.0f, 1.0f)), 1.0f).xyz, _361, mad(float4(_320, sqrt(clamp(1.0f - dot(_320, _320), 0.0f, 1.0f)), 1.0f).xyz, _329, float4(_335, sqrt(clamp(1.0f - dot(_335, _335), 0.0f, 1.0f)), 1.0f).xyz * _344))) * Material_Material_PreshaderBuffer[5].x.xxx) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_261, cross(_258, _261), _258), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _381 = _380 * 1.0f;
    float4 _392 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _397 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _404 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _410 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _416 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _421 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _428 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _312, View_View_MaterialTextureMipBias);
    float4 _434 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _312, View_View_MaterialTextureMipBias);
    float3 _436 = mad(_434.xyz, _368, mad(_428.xyz, _361, mad(_416.xyz, _329, _421.xyz * _344)));
    float3 _440 = clamp(mad(_410.xyz, _368, mad(_404.xyz, _361, mad(_392.xyz, _329, _397.xyz * _344))), 0.0f.xxx, 1.0f.xxx);
    float _441 = clamp(_436.z, 0.0f, 1.0f);
    float _445 = mad(clamp(_436.y, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _446 = clamp(_436.x, 0.0f, 1.0f);
    float _490 = 0.0f;
    float _491 = 0.0f;
    float _492 = 0.0f;
    float3 _493 = 0.0f.xxx;
    float3 _494 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _461 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _465 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _461, 0.0f);
        float4 _468 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _461, 0.0f);
        float4 _471 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _461, 0.0f);
        float _481 = _471.w;
        _490 = mad(_445, _481, _471.z);
        _491 = mad(0.5f, _481, _471.y);
        _492 = mad(_441, _481, _471.x);
        _493 = (_440 * _465.w) + _465.xyz;
        _494 = normalize((_381 * _468.w) + ((_468.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _490 = _445;
        _491 = 0.5f;
        _492 = _441;
        _493 = _440;
        _494 = _381;
    }
    bool _507 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _513 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _507)
    {
        _513 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _513 = 1.0f;
    }
    float _560 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _528 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _283, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _539 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_528.x), int(_528.y), int(_528.z), 0).xyz, 0)));
        _560 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_539.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_528 / _539.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _560 = _513;
    }
    float3 _573 = ((_493 - (_493 * _492)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _580 = (lerp((0.07999999821186065673828125f * _491).xxx, _493, _492.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _583 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _588 = 0.0f.xxx;
    if (_583)
    {
        _588 = _573 + (_580 * 0.449999988079071044921875f);
    }
    else
    {
        _588 = _573;
    }
    bool3 _589 = _583.xxx;
    float3 _590 = float3(_589.x ? 0.0f.xxx.x : _580.x, _589.y ? 0.0f.xxx.y : _580.y, _589.z ? 0.0f.xxx.z : _580.z);
    float3 _592 = dot(_590, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _599 = _446.xxx;
    float3 _668 = 0.0f.xxx;
    if (_507)
    {
        float3 _620 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _283, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _624 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _620);
        float4 _628 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _620);
        float4 _631 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _620);
        float4 _649 = 0.0f.xxxx;
        _649.y = (-0.48860299587249755859375f) * _494.y;
        _649.z = 0.48860299587249755859375f * _494.z;
        _649.w = (-0.48860299587249755859375f) * _494.x;
        _649.x = 0.886227548122406005859375f;
        float3 _658 = _649.yzw * 2.094395160675048828125f;
        float4 _659 = float4(_649.x, _658.x, _658.y, _658.z);
        float3 _661 = 0.0f.xxx;
        _661.x = dot(float4(_624.x, _628.x, _631.x, _624.w), _659);
        _661.y = dot(float4(_624.y, _628.y, _631.y, _628.w), _659);
        _661.z = dot(float4(_624.z, _628.z, _631.zw), _659);
        _668 = max(0.0f.xxx, _661) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _668 = 0.0f.xxx;
    }
    float3 _746 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _698 = 0.0f;
        float _699 = 0.0f;
        float3 _700 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _688 = 0.0f.xxx;
            float _689 = 0.0f;
            if (_507)
            {
                _688 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _689 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _688 = _494;
                _689 = 1.0f;
            }
            float _692 = mad(_689 - 1.0f, 1.0f - _689, 1.0f);
            _698 = lerp(clamp(dot(_688, _494), 0.0f, 1.0f), 1.0f, _692);
            _699 = _689;
            _700 = lerp(_688, _494, _692.xxx);
        }
        else
        {
            _698 = 1.0f;
            _699 = 1.0f;
            _700 = _494;
        }
        float4 _704 = float4(_700, 1.0f);
        float3 _708 = 0.0f.xxx;
        _708.x = dot(View_SkyIrradianceEnvironmentMap[0u], _704);
        _708.y = dot(View_SkyIrradianceEnvironmentMap[1u], _704);
        _708.z = dot(View_SkyIrradianceEnvironmentMap[2u], _704);
        float4 _719 = _704.xyzz * _704.yzzx;
        float3 _723 = 0.0f.xxx;
        _723.x = dot(View_SkyIrradianceEnvironmentMap[3u], _719);
        _723.y = dot(View_SkyIrradianceEnvironmentMap[4u], _719);
        _723.z = dot(View_SkyIrradianceEnvironmentMap[5u], _719);
        _746 = (max(0.0f.xxx, (_708 + _723) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_700.x, _700.x, -(_700.y * _700.y)))) * View_View_SkyLightColor.xyz) * (_699 * _698);
    }
    else
    {
        _746 = 0.0f.xxx;
    }
    float3 _747 = mad(_668, View_View_PrecomputedIndirectLightingColorScale, _746);
    float3 _768 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _826 = 0.0f.xxx;
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
        float3 _788 = abs(_85);
        float3 _789 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _825 = 0.0f.xxx;
        if (any(bool3(_788.x > _789.x, _788.y > _789.y, _788.z > _789.z)))
        {
            float3 _821 = frac(dot(frac(frac(_75 * 1.52587890625e-05f.xxx) + frac(_78 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _825 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_821.x > 0.5f.xxx.x, _821.y > 0.5f.xxx.y, _821.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _811 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _799 = abs(_282 - in_var_TEXCOORD9);
                _811 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_799.x, max(_799.y, _799.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _811 = _768;
            }
            _825 = _811;
        }
        _826 = _825;
    }
    else
    {
        _826 = _768;
    }
    float4 _833 = float4((mad(_747 * _588, max(_599, ((((((_493 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _446) + ((_493 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _446) + ((_493 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _446), lerp(0.0f.xxx, _588 + (_590 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _826) * 1.0f, 0.0f);
    float4 _844 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _843 = _833;
        _843.w = 0.0f;
        _844 = _843;
    }
    else
    {
        _844 = _833;
    }
    float2 _849 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _864 = (_494 * 0.5f) + 0.5f.xxx;
    float4 _866 = 0.0f.xxxx;
    _866.x = _864.x;
    _866.y = _864.y;
    _866.z = _864.z;
    _866.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _873 = 0.0f.xxxx;
    _873.x = _493.x;
    _873.y = _493.y;
    _873.z = _493.z;
    _873.w = mad(frac(dot(_849.xyx * _849.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_747, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(_599, ((((((_592 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _446) + ((_592 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _446) + ((_592 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _446).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _879 = 0.0f.xxxx;
    _879.x = _560;
    _879.y = 1.0f;
    _879.z = 1.0f;
    _879.w = 1.0f;
    float4 _884 = _844 * View_View_PreExposure;
    float3 _886 = min(_884.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_886.x, _886.y, _886.z, _884.w);
    out_var_SV_Target1 = _866;
    out_var_SV_Target2 = float4(_492, _491, _490, 0.50588238239288330078125f);
    out_var_SV_Target3 = _873;
    out_var_SV_Target5 = _879;
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
