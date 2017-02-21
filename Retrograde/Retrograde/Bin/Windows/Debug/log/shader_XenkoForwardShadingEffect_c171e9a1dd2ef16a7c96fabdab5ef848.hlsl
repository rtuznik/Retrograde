/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceNormalMap<true,true,true> [{normalMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.NormalMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = mixin ComputeColorAdd3ds [{color1 = ComputeColorTextureScaledOffsetDynamicSampler<Material.GlossinessMap,TEXCOORD0,Material.Sampler.i0,r,Material.TextureScale.i2,Material.TextureOffset.i2>}, {color2 = ComputeColorConstantFloatLink<Material.GlossinessValue>}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], mixin MaterialSurfaceSetStreamFromComputeColor<matBlend,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.BlendValue>}], mixin MaterialSurfaceShadingBlend [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer PerMaterial [Size: 112]
@C    scale_id175 => Material.TextureScale
@C    offset_id176 => Material.TextureOffset
@C    scale_id180 => Material.TextureScale.i1
@C    offset_id181 => Material.TextureOffset.i1
@C    scale_id188 => Material.TextureScale.i2
@C    offset_id189 => Material.TextureOffset.i2
@C    constantFloat_id190 => Material.GlossinessValue
@C    constantColor_id198 => Material.SpecularValue
@C    constantFloat_id200 => Material.SpecularIntensityValue
@C    constantFloat_id213 => Material.BlendValue
@C    constantColor_id215 => Material.DiffuseValue
cbuffer PerView [Size: 816]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id77 => Camera.NearClipPlane
@C    FarClipPlane_id78 => Camera.FarClipPlane
@C    ZProjection_id79 => Camera.ZProjection
@C    ViewSize_id80 => Camera.ViewSize
@C    AspectRatio_id81 => Camera.AspectRatio
@C    ClusterDepthScale_id87 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id88 => LightClustered.ClusterDepthBias
@C    LightCount_id94 => DirectLightGroupPerView.LightCount.directLightGroups[2]
@C    Lights_id96 => LightDirectionalGroup.Lights.directLightGroups[2]
@C    ShadowMapTextureSize_id98 => ShadowMap.TextureSize.directLightGroups[2]
@C    ShadowMapTextureTexelSize_id99 => ShadowMap.TextureTexelSize.directLightGroups[2]
@C    WorldToShadowCascadeUV_id160 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[2]
@C    DepthBiases_id161 => ShadowMapReceiverBase.DepthBiases.directLightGroups[2]
@C    OffsetScales_id162 => ShadowMapReceiverBase.OffsetScales.directLightGroups[2]
@C    CascadeDepthSplits_id168 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[2]
@C    Bias_id170 => ShadowMapFilterPcf.Bias.directLightGroups[2]
@C    AmbientLight_id171 => LightSimpleAmbient.AmbientLight.environmentLights[0]
***************************
******  Resources    ******
***************************
@R    Texture_id172 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id172 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id173 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id173 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id178 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id178 => Material.NormalMap [Stage: None, Slot: (-1--1)]
@R    Texture_id186 => Material.GlossinessMap [Stage: None, Slot: (-1--1)]
@R    Texture_id186 => Material.GlossinessMap [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id132 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    Sampler_id173 => Material.Sampler.i0 [Stage: Pixel, Slot: (1-1)]
@R    Texture_id172 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id178 => Material.NormalMap [Stage: Pixel, Slot: (1-1)]
@R    Texture_id186 => Material.GlossinessMap [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (7-7)]
@R    PerDraw => PerDraw [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (1-1)]
@R    PerView => PerView [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    ShadingBase => a4b46f7608ab80e77c938f475834f962
@S    ComputeColor => 6e3e8655257003c26480195de33cbbc1
@S    TransformationBase => f1386ed2f0e8db4eb9e79a63ee23e05c
@S    NormalStream => 5d295e278c920e30e310e1979bc14a19
@S    TransformationWAndVP => 1ad0d61ab4ab5bf92b87169f094b8b17
@S    PositionStream4 => 87a2d7a46c028c1479a982866d88d067
@S    PositionHStream4 => f5c4e6d128281ef2d40fba86959205d5
@S    Transformation => 8b044dd67dc836d93d27ce6bee5b1db8
@S    NormalFromNormalMapping => facb7d217f791465ba2cb80b1ad8bc3b
@S    NormalBase => b70fd93cea3e78cb7e35bf33c5bc761d
@S    MaterialSurfacePixelStageCompositor => 1d6419ba7ac2d0f180564d21a0d3f8c0
@S    PositionStream => 664ed5997626578c1dfdc74402cd23f6
@S    MaterialPixelShadingStream => 28de6f1960d9c29f165f916c0adfe5a5
@S    MaterialPixelStream => 17c22a7a37d239e0ee9e8d2779c03c80
@S    MaterialStream => 83fd257dadb68d92b2e57a11122265d4
@S    IStreamInitializer => 8be0404675b438bff2babfd297fb96df
@S    LightStream => 81d82a322111295057787d950e438228
@S    DirectLightGroupArray => 9addcff5b7cb7364a8a5d87d4de45742
@S    DirectLightGroup => 92eb9d726b1937533c27d57ff97f8da5
@S    ShadowGroup => 545ec47456ee7f4472536d8a7316d02f
@S    ShadowStream => 4abbfb30b4b85e71b0f683b420977101
@S    EnvironmentLightArray => 92f59b0813153de143701e01f1da89e0
@S    EnvironmentLight => 461117f7455b162e23645a86e89f749d
@S    IMaterialSurface => 14b3d59b9c516893bd7730aaa3dc225a
@S    LightClusteredPointGroup => 60ed7b620bc6eabb3ad2330302bc367e
@S    LightPoint => 2044aa0ce4ba04060728e554f889fe5c
@S    LightUtil => d77cfcfacea55ef4e06d9f585be27420
@S    LightClustered => e0cc7997bb88b676801a857b727faf2b
@S    Camera => ec417735d81c9ad1d80ca0e6d87138b0
@S    LightClusteredSpotGroup => 7beef740595052a48885ae9f619304ca
@S    LightSpot => 0bcf1b3e89e9a247545b91358ea8a1a5
@S    LightDirectionalGroup => 7bb2cc43889ab80004ab02a83bbd02d2
@S    DirectLightGroupPerView => f728a5a7f613dcd26bc20d54908ca1b8
@S    LightDirectional => 8f8fc60cae27222c84186af6eec74080
@S    ShadowMapReceiverDirectional => 95d60505c10a89c26292fb44b5445492
@S    ShadowMapReceiverBase => b8e884a10ba47c78372ae2ee6b0eada5
@S    ShadowMapGroup => 9fa1018d7f62b9d4719202422d304c06
@S    ShadowMapCommon => f7f2751f116d20510441e8bbc4c1bea6
@S    ShadowMapFilterBase => 4f39c8431637ddf01ca0702bbf3fa5d8
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ShadowMapFilterPcf => cac13ffd50e214b4ab513eead5113b25
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorTextureScaledOffsetDynamicSampler => 36853d1a7bd080d8e9e9c5137a104b79
@S    DynamicTexture => 74e692ca9cc93b6cc6965bc380e07efe
@S    DynamicSampler => 0e1b689d1f965f3f34ae76abdf34dea7
@S    DynamicTextureStream => 546b0c40a42b4fe0e5613396b0ed4d66
@S    MaterialSurfaceNormalMap => 9d09de7bfdbcadbc973dbfcc57934c02
@S    MaterialSurfaceGlossinessMap => fb8774941dd1a7b0ced77715861382a4
@S    ComputeColorAdd3ds => 0d65d2008f4e34b23415e745fe4a26e5
@S    BlendUtils => 15eb19bd390134e12d394f2ac18f8d02
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
@S    MaterialSurfaceShadingSpecularMicrofacet => b7d013f1414d67d7f1a4afd4ac068c8e
@S    BRDFMicrofacet => 98c58221f1b61f0766453f0ce60edcb0
@S    IMaterialSpecularMicrofacetFresnelFunction => be6c16bab5a59713001b43d92cde1a5a
@S    IMaterialSpecularMicrofacetVisibilityFunction => 5872403d82d7dcdfdaaf64a9f924b8dd
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => a8ee1e483f2e3d59a955262211e6f903
@S    MaterialSpecularMicrofacetFresnelSchlick => 31c4aa7c7fbef53ee309a102999a200c
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => f3ca0542110ccc88e4ea25b477d2e6a0
@S    MaterialSpecularMicrofacetNormalDistributionGGX => c1f51806b6ccb80ce3f85c0d2c550f6b
@S    MaterialSurfaceShadingBlend => ac7ee53e630d134e6d099feb813b6052
***************************
*****     Stages      *****
***************************
@G    Vertex => f2eeb9bb9f1f69bc13dc865e6c9745f3
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4 [unused]
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4 [unused]
//   int LightCount_id94;               // Offset:  388 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96;                     // Offset:  400 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256 [unused]
//   float DepthBiases_id161;           // Offset:  704 Size:     4 [unused]
//   float OffsetScales_id162;          // Offset:  720 Size:     4 [unused]
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52 [unused]
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerDraw                           cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TANGENT                  0   xyzw        2     NONE   float   xyzw
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xyzw
dcl_input v3.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   v2.x <- __input__.meshTangent_id15.x; v2.y <- __input__.meshTangent_id15.y; v2.z <- __input__.meshTangent_id15.z; v2.w <- __input__.meshTangent_id15.w; 
//   v3.x <- __input__.TexCoord_id148.x; v3.y <- __input__.TexCoord_id148.y; 
//   o4.x <- <VSMain return value>.TexCoord_id148.x; o4.y <- <VSMain return value>.TexCoord_id148.y; 
//   o3.x <- <VSMain return value>.meshTangent_id15.x; o3.y <- <VSMain return value>.meshTangent_id15.y; o3.z <- <VSMain return value>.meshTangent_id15.z; o3.w <- <VSMain return value>.meshTangent_id15.w; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.meshNormal_id14.x; o2.z <- <VSMain return value>.meshNormal_id14.y; o2.w <- <VSMain return value>.meshNormal_id14.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 1021 "G:\Documents\Xenko Projects\Retrograde\Retrograde\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c171e9a1dd2ef16a7c96fabdab5ef848.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 1102
mov o0.xyzw, r0.xyzw

#line 1011
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 1102
mov o1.w, r1.x
mov o2.x, r1.x

#line 1011
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 1102
mov o2.yzw, v1.xxyz
mov o3.xyzw, v2.xyzw
mov o4.xy, v3.xyxx
ret 
// Approximately 15 instruction slots used
@G    Pixel => 51c002b8404b0d502a9ba2fc74fb7de2
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id175;                // Offset:    0 Size:     8
//   float2 offset_id176;               // Offset:    8 Size:     8
//   float2 scale_id180;                // Offset:   16 Size:     8
//   float2 offset_id181;               // Offset:   24 Size:     8
//   float2 scale_id188;                // Offset:   32 Size:     8
//   float2 offset_id189;               // Offset:   40 Size:     8
//   float constantFloat_id190;         // Offset:   48 Size:     4
//   float4 constantColor_id198;        // Offset:   64 Size:    16
//   float constantFloat_id200;         // Offset:   80 Size:     4
//   float constantFloat_id213;         // Offset:   84 Size:     4
//   float4 constantColor_id215;        // Offset:   96 Size:    16
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4
//   int LightCount_id94;               // Offset:  388 Size:     4
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96;                     // Offset:  400 Size:    28
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256
//   float DepthBiases_id161;           // Offset:  704 Size:     4
//   float OffsetScales_id162;          // Offset:  720 Size:     4
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearClampCompareLessEqualSampler_id132  sampler_c      NA          NA    0        1
// Sampler_id173                     sampler      NA          NA    1        1
// Texture_id172                     texture  float4          2d    0        1
// Texture_id178                     texture  float4          2d    1        1
// Texture_id186                     texture  float4          2d    2        1
// LightClusters_id85                texture   uint2          3d    3        1
// LightIndices_id86                 texture    uint         buf    4        1
// PointLights_id90                  texture  float4         buf    5        1
// SpotLights_id93                   texture  float4         buf    6        1
// ShadowMapTexture_id97             texture  float4          2d    7        1
// PerDraw                           cbuffer      NA          NA    0        1
// PerMaterial                       cbuffer      NA          NA    1        1
// PerView                           cbuffer      NA          NA    2        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float   xyz 
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[3], immediateIndexed
dcl_constantbuffer cb1[7], immediateIndexed
dcl_constantbuffer cb2[51], dynamicIndexed
dcl_sampler s0, mode_comparison
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xy
dcl_output o0.xyzw
dcl_temps 20
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.meshNormal_id14.x; v2.z <- __input__.meshNormal_id14.y; v2.w <- __input__.meshNormal_id14.z; 
//   v3.x <- __input__.meshTangent_id15.x; v3.y <- __input__.meshTangent_id15.y; v3.z <- __input__.meshTangent_id15.z; v3.w <- __input__.meshTangent_id15.w; 
//   v4.x <- __input__.TexCoord_id148.x; v4.y <- __input__.TexCoord_id148.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 1002 "G:\Documents\Xenko Projects\Retrograde\Retrograde\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c171e9a1dd2ef16a7c96fabdab5ef848.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.meshNormal_id14.x; r0.y <- streams.meshNormal_id14.y; r0.z <- streams.meshNormal_id14.z
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v3.xyzx  // r1.x <- tangent.x; r1.y <- tangent.y; r1.z <- tangent.z
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r2.xyzx, v3.wwww  // r2.x <- bitangent.x; r2.y <- bitangent.y; r2.z <- bitangent.z

#line 1038
dp3 r3.x, r1.xyzx, cb0[0].xyzx  // r3.x <- streams.tangentToWorld_id17._m00
dp3 r4.x, r1.xyzx, cb0[1].xyzx  // r4.x <- streams.tangentToWorld_id17._m01
dp3 r1.x, r1.xyzx, cb0[2].xyzx  // r1.x <- streams.tangentToWorld_id17._m02
dp3 r3.y, r2.xyzx, cb0[0].xyzx  // r3.y <- streams.tangentToWorld_id17._m10
dp3 r4.y, r2.xyzx, cb0[1].xyzx  // r4.y <- streams.tangentToWorld_id17._m11
dp3 r1.y, r2.xyzx, cb0[2].xyzx  // r1.y <- streams.tangentToWorld_id17._m12
dp3 r3.z, r0.xyzx, cb0[0].xyzx  // r3.z <- streams.tangentToWorld_id17._m20
dp3 r4.z, r0.xyzx, cb0[1].xyzx  // r4.z <- streams.tangentToWorld_id17._m21
dp3 r1.z, r0.xyzx, cb0[2].xyzx  // r1.z <- streams.tangentToWorld_id17._m22

#line 1025
add r0.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx  // r0.x <- streams.viewWS_id61.x; r0.y <- streams.viewWS_id61.y; r0.z <- streams.viewWS_id61.z

#line 777
mad r2.xy, v4.xyxx, cb1[0].xyxx, cb1[0].zwzz
sample r2.xyzw, r2.xyxx, t0.xyzw, s1  // r2.x <- <Compute_id293 return value>.x; r2.y <- <Compute_id293 return value>.y; r2.z <- <Compute_id293 return value>.z

#line 773
mad r5.xy, v4.xyxx, cb1[1].xyxx, cb1[1].zwzz
sample r5.xyzw, r5.xyxx, t1.xyzw, s1  // r5.x <- <Compute_id295 return value>.x; r5.y <- <Compute_id295 return value>.y

#line 908
mad r5.xy, r5.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r5.x <- normal.x; r5.y <- normal.y

#line 916
dp2 r0.w, r5.xyxx, r5.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r5.z, r0.w  // r5.z <- normal.z

#line 692
mad r6.xy, v4.xyxx, cb1[2].xyxx, cb1[2].zwzz
sample r6.xyzw, r6.xyxx, t2.xyzw, s1  // r6.x <- <Compute_id297 return value>.x

#line 768
add r0.w, r6.x, cb1[3].x  // r0.w <- interColor.x

#line 684
mul r1.w, r6.x, cb1[3].x
add r2.w, -r6.x, l(1.000000)
mul r3.w, cb1[3].x, cb1[3].x
mul r2.w, r2.w, r3.w
mad r0.w, r1.w, r0.w, r2.w
add r1.w, -cb1[3].x, l(1.000000)
mul r2.w, r6.x, r6.x
mad r0.w, r2.w, r1.w, r0.w  // r0.w <- <BasicBlend_id542 return value>.x

#line 536
mov r5.w, -r5.y
dp3 r3.y, r5.xwzx, r3.xyzx
dp3 r3.z, r5.xwzx, r4.xyzx
dp3 r3.w, r5.xwzx, r1.xyzx
dp3 r1.x, r3.yzwy, r3.yzwy
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r3.yzwy  // r1.x <- streams.normalWS_id16.x; r1.y <- streams.normalWS_id16.y; r1.z <- streams.normalWS_id16.z

#line 740
mul r3.xyz, cb1[4].xyzx, cb1[5].xxxx  // r3.x <- streams.matSpecularVisible_id64.x; r3.y <- streams.matSpecularVisible_id64.y; r3.z <- streams.matSpecularVisible_id64.z
dp3 r1.w, r1.xyzx, r0.xyzx
max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotV_id65
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 676
dp3 r2.w, r5.xzwx, r5.xzwx
sqrt r3.w, r2.w  // r3.w <- r
lt r4.x, r3.w, l(1.000000)
add r4.y, -r2.w, l(1.000000)
mul r4.y, r4.y, l(0.500000)
mul r2.w, r2.w, r3.w
mad r2.w, r3.w, l(3.000000), -r2.w
div r2.w, r4.y, r2.w  // r2.w <- roughnessAdjust
and r2.w, r2.w, r4.x

#line 744
mad r0.w, r0.w, r0.w, r2.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id63

#line 413
add r2.w, v1.z, -cb2[22].z
div r2.w, cb2[22].w, r2.w  // r2.w <- depth
ftoi r4.xy, v1.xyxx  // r4.x <- shadingPosition.x; r4.y <- shadingPosition.y
mad r2.w, r2.w, cb2[23].w, cb2[24].x
log r2.w, r2.w
max r2.w, r2.w, l(0.000000)
ftoi r5.z, r2.w  // r5.z <- slice
ushr r5.xy, r4.xyxx, l(6)
mov r5.w, l(0)
ld r4.xyzw, r5.xyzw, t3.xyzw  // r4.x <- streams.lightData_id83.x; r4.y <- streams.lightData_id83.y

#line 508
and r2.w, r4.y, l(0x0000ffff)  // r2.w <- <GetMaxLightCount_id266 return value>

#line 808
mov r5.xyz, v0.xyzx  // r5.x <- streams.PositionWS_id19.x; r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r6.xyz, r0.xyzx  // r6.x <- streams.viewWS_id61.x; r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y; r7.z <- streams.matDiffuseVisible_id62.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.matSpecularVisible_id64.x; r8.y <- streams.matSpecularVisible_id64.y; r8.z <- streams.matSpecularVisible_id64.z
mov r8.w, r0.w  // r8.w <- streams.alphaRoughness_id63
mov r9.xyz, r1.xyzx  // r9.x <- streams.normalWS_id16.x; r9.y <- streams.normalWS_id16.y; r9.z <- streams.normalWS_id16.z
mov r10.z, r1.w  // r10.z <- streams.NdotV_id65
mov r10.x, r4.x  // r10.x <- streams.lightIndex_id84
mov r11.xyz, l(0,0,0,0)  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.z, r3.w, r2.w
  breakc_nz r4.z
  if_nz r4.z
    break 
  endif 

#line 400
  ld r12.xyzw, r10.xxxx, t4.xyzw  // r12.x <- realLightIndex
  iadd r10.x, r10.x, l(1)  // r10.x <- streams.lightIndex_id84
  ishl r4.z, r12.x, l(1)
  ld r12.xyzw, r4.zzzz, t5.xyzw  // r12.x <- pointLight1.x; r12.y <- pointLight1.y; r12.z <- pointLight1.z; r12.w <- pointLight1.w
  iadd r4.z, r4.z, l(1)
  ld r13.xyzw, r4.zzzz, t5.xyzw  // r13.x <- pointLight2.x; r13.y <- pointLight2.y; r13.z <- pointLight2.z

#line 319
  add r12.xyz, -r5.xyzx, r12.xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z
  dp3 r4.z, r12.xyzx, r12.xyzx
  sqrt r4.w, r4.z  // r4.w <- lightVectorLength
  div r12.xyz, r12.xyzx, r4.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 282
  max r4.w, r4.z, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 223
  mul r4.z, r12.w, r4.z  // r4.z <- factor
  mad r4.z, -r4.z, r4.z, l(1.000000)
  max r4.z, r4.z, l(0.000000)  // r4.z <- smoothFactor
  mul r4.z, r4.z, r4.z  // r4.z <- <SmoothDistanceAttenuation_id87 return value>

#line 283
  mul r4.z, r4.z, r4.w  // r4.z <- attenuation

#line 325
  mul r13.xyz, r4.zzzz, r13.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 498
  dp3 r4.z, r9.xyzx, r12.xyzx
  max r4.z, r4.z, l(0.000100)  // r4.z <- streams.NdotL_id43
  mul r13.xyz, r4.zzzz, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 490
  add r14.xyz, r6.xyzx, r12.xyzx
  dp3 r4.w, r14.xyzx, r14.xyzx
  rsq r4.w, r4.w
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r4.w, r9.xyzx, r14.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotH_id69
  dp3 r5.w, r12.xyzx, r14.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.LdotH_id70

#line 734
  mul r12.xyz, r7.xyzx, r13.xyzx

#line 818
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 434
  add r14.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r14.xyz, r14.xyzx, r5.wwww, r8.xyzx  // r14.x <- <FresnelSchlick_id180 return value>.x; r14.y <- <FresnelSchlick_id180 return value>.y; r14.z <- <FresnelSchlick_id180 return value>.z

#line 429
  mul r5.w, r8.w, l(0.500000)  // r5.w <- k
  mad r6.w, -r8.w, l(0.500000), l(1.000000)
  mad r7.w, r4.z, r6.w, r5.w
  div r7.w, r4.z, r7.w  // r7.w <- <VisibilityhSchlickGGX_id198 return value>
  mad r5.w, r10.z, r6.w, r5.w
  div r5.w, r10.z, r5.w  // r5.w <- <VisibilityhSchlickGGX_id198 return value>

#line 549
  mul r5.w, r5.w, r7.w
  mul r4.z, r10.z, r4.z
  div r4.z, r5.w, r4.z  // r4.z <- <VisibilitySmithSchlickGGX_id200 return value>

#line 544
  mul r5.w, r8.w, r8.w  // r5.w <- alphaR2
  mul r4.w, r4.w, r4.w
  mad r6.w, r8.w, r8.w, l(-1.000000)
  mad r4.w, r4.w, r6.w, l(1.000000)
  max r4.w, r4.w, l(0.000100)
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r5.w, r4.w  // r4.w <- <NormalDistributionGGX_id214 return value>

#line 728
  mul r14.xyz, r4.zzzz, r14.xyzx
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 822
  mad r11.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 808
  iadd r3.w, r3.w, l(1)

#line 824
endloop   // r10.x <- streams.lightIndex_id84

#line 478
ushr r3.w, r4.y, l(16)  // r3.w <- <GetMaxLightCount_id275 return value>

#line 832
mov r4.yzw, v0.xxyz  // r4.y <- streams.PositionWS_id19.x; r4.z <- streams.PositionWS_id19.y; r4.w <- streams.PositionWS_id19.z
mov r5.xyz, r0.xyzx  // r5.x <- streams.viewWS_id61.x; r5.y <- streams.viewWS_id61.y; r5.z <- streams.viewWS_id61.z
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id16.x; r6.y <- streams.normalWS_id16.y; r6.z <- streams.normalWS_id16.z
mov r7.xyz, r2.xyzx
mov r8.xyz, r3.xyzx
mov r9.xyz, r11.xyzx  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z
mov r12.x, r0.w  // r12.x <- streams.alphaRoughness_id63
mov r12.y, r1.w  // r12.y <- streams.NdotV_id65
mov r5.w, r10.x  // r5.w <- streams.lightIndex_id84
mov r6.w, l(0)  // r6.w <- i
loop 
  ige r7.w, r6.w, r3.w
  breakc_nz r7.w
  if_nz r7.w
    break 
  endif 

#line 381
  ld r13.xyzw, r5.wwww, t4.xyzw  // r13.x <- realLightIndex
  iadd r5.w, r5.w, l(1)  // r5.w <- streams.lightIndex_id84
  ishl r7.w, r13.x, l(2)
  ld r13.xyzw, r7.wwww, t6.xyzw  // r13.x <- spotLight1.x; r13.y <- spotLight1.y; r13.z <- spotLight1.z

#line 387
  iadd r10.yzw, r7.wwww, l(0, 1, 2, 3)
  ld r14.xyzw, r10.yyyy, t6.xyzw  // r14.x <- spotLight2.x; r14.y <- spotLight2.y; r14.z <- spotLight2.z
  ld r15.xyzw, r10.zzzz, t6.xyzw  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.z <- spotLight3.z
  ld r16.xyzw, r10.wwww, t6.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 304
  add r10.yzw, -r4.yyzw, r13.xxyz  // r10.y <- lightVector.x; r10.z <- lightVector.y; r10.w <- lightVector.z
  dp3 r7.w, r10.yzwy, r10.yzwy
  sqrt r8.w, r7.w  // r8.w <- lightVectorLength
  div r10.yzw, r10.yyzw, r8.wwww  // r10.y <- lightVectorNorm.x; r10.z <- lightVectorNorm.y; r10.w <- lightVectorNorm.z

#line 275
  max r8.w, r7.w, l(0.000100)
  div r8.w, l(1.000000, 1.000000, 1.000000, 1.000000), r8.w  // r8.w <- attenuation

#line 217
  mul r7.w, r15.z, r7.w  // r7.w <- factor
  mad r7.w, -r7.w, r7.w, l(1.000000)
  max r7.w, r7.w, l(0.000000)  // r7.w <- smoothFactor
  mul r7.w, r7.w, r7.w  // r7.w <- <SmoothDistanceAttenuation_id95 return value>

#line 276
  mul r7.w, r7.w, r8.w  // r7.w <- attenuation

#line 267
  dp3 r8.w, -r14.xyzx, r10.yzwy  // r8.w <- cd
  mad_sat r8.w, r8.w, r15.x, r15.y  // r8.w <- attenuation
  mul r8.w, r8.w, r8.w

#line 313
  mul r7.w, r7.w, r8.w  // r7.w <- attenuation
  mul r13.xyz, r7.wwww, r16.xyzx  // r13.x <- streams.lightColor_id39.x; r13.y <- streams.lightColor_id39.y; r13.z <- streams.lightColor_id39.z

#line 468
  dp3 r7.w, r6.xyzx, r10.yzwy
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id43
  mul r13.xyz, r7.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id40.x; r13.y <- streams.lightColorNdotL_id40.y; r13.z <- streams.lightColorNdotL_id40.z

#line 490
  add r14.xyz, r5.xyzx, r10.yzwy
  dp3 r8.w, r14.xyzx, r14.xyzx
  rsq r8.w, r8.w
  mul r14.xyz, r8.wwww, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r8.w, r6.xyzx, r14.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.NdotH_id69
  dp3 r9.w, r10.yzwy, r14.xyzx
  max r9.w, r9.w, l(0.000100)  // r9.w <- streams.LdotH_id70

#line 734
  mul r10.yzw, r7.xxyz, r13.xxyz

#line 842
  mad r10.yzw, r10.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r9.xxyz  // r10.y <- directLightingContribution.x; r10.z <- directLightingContribution.y; r10.w <- directLightingContribution.z

#line 434
  add r14.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.w, -r9.w, l(1.000000)
  mul r11.w, r9.w, r9.w
  mul r11.w, r11.w, r11.w
  mul r9.w, r9.w, r11.w
  mad r14.xyz, r14.xyzx, r9.wwww, r8.xyzx  // r14.x <- <FresnelSchlick_id180 return value>.x; r14.y <- <FresnelSchlick_id180 return value>.y; r14.z <- <FresnelSchlick_id180 return value>.z

#line 429
  mul r9.w, r12.x, l(0.500000)  // r9.w <- k
  mad r11.w, -r12.x, l(0.500000), l(1.000000)
  mad r12.z, r7.w, r11.w, r9.w
  div r12.z, r7.w, r12.z  // r12.z <- <VisibilityhSchlickGGX_id198 return value>
  mad r9.w, r12.y, r11.w, r9.w
  div r9.w, r12.y, r9.w  // r9.w <- <VisibilityhSchlickGGX_id198 return value>

#line 549
  mul r9.w, r9.w, r12.z
  mul r7.w, r12.y, r7.w
  div r7.w, r9.w, r7.w  // r7.w <- <VisibilitySmithSchlickGGX_id200 return value>

#line 544
  mul r9.w, r12.x, r12.x  // r9.w <- alphaR2
  mul r8.w, r8.w, r8.w
  mad r11.w, r12.x, r12.x, l(-1.000000)
  mad r8.w, r8.w, r11.w, l(1.000000)
  max r8.w, r8.w, l(0.000100)
  mul r8.w, r8.w, r8.w
  mul r8.w, r8.w, l(3.141593)
  div r8.w, r9.w, r8.w  // r8.w <- <NormalDistributionGGX_id214 return value>

#line 728
  mul r14.xyz, r7.wwww, r14.xyzx
  mul r14.xyz, r8.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 846
  mad r9.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r10.yzwy  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.z <- directLightingContribution.z

#line 832
  iadd r6.w, r6.w, l(1)

#line 848
endloop   // r5.w <- streams.lightIndex_id84

#line 296
dp2 r4.y, cb2[45].xxxx, cb2[27].zzzz

#line 288
mov r5.w, l(1.000000)

#line 856
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id19.x; r6.y <- streams.PositionWS_id19.y; r6.z <- streams.PositionWS_id19.z
mov r6.w, v2.x  // r6.w <- streams.DepthVS_id20
mov r7.xyz, r0.xyzx  // r7.x <- streams.viewWS_id61.x; r7.y <- streams.viewWS_id61.y; r7.z <- streams.viewWS_id61.z
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id16.x; r8.y <- streams.normalWS_id16.y; r8.z <- streams.normalWS_id16.z
mov r10.xyz, r2.xyzx  // r10.x <- streams.matDiffuseVisible_id62.x; r10.y <- streams.matDiffuseVisible_id62.y; r10.z <- streams.matDiffuseVisible_id62.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id64.x; r11.y <- streams.matSpecularVisible_id64.y; r11.z <- streams.matSpecularVisible_id64.z
mov r12.xyz, r9.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r13.x, r0.w  // r13.x <- streams.alphaRoughness_id63
mov r13.y, r1.w  // r13.y <- streams.NdotV_id65
mov r4.z, l(0)  // r4.z <- i
loop 
  ige r4.w, r4.z, l(1)
  breakc_nz r4.w
  ige r4.w, r4.z, cb2[24].y
  if_nz r4.w
    break 
  endif 

#line 450
  dp3 r4.w, r8.xyzx, -cb2[25].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43

#line 331
  ishl r7.w, r4.z, l(2)  // r7.w <- cascadeIndexBase

#line 338
  lt r8.w, cb2[r7.w + 46].x, r6.w

#line 341
  and r8.w, r8.w, l(1)  // r8.w <- cascadeIndex

#line 338
  iadd r13.zw, r7.wwww, l(0, 0, 1, 2)
  lt r9.w, cb2[r13.z + 46].x, r6.w

#line 341
  movc r8.w, r9.w, l(2), r8.w

#line 338
  lt r9.w, cb2[r13.w + 46].x, r6.w

#line 341
  movc r8.w, r9.w, l(3), r8.w

#line 295
  add r10.w, -r4.w, l(1.000000)
  max r10.w, r10.w, l(0.000000)  // r10.w <- normalOffsetScale
  mul r10.w, r4.y, r10.w

#line 345
  mad r5.xyz, r10.wwww, r8.xyzx, r6.xyzx  // r5.x <- shadowPosition.x; r5.y <- shadowPosition.y; r5.z <- shadowPosition.z

#line 288
  iadd r7.w, r7.w, r8.w
  ishl r10.w, r7.w, l(2)
  dp4 r14.x, r5.xyzw, cb2[r10.w + 28].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r5.xyzw, cb2[r10.w + 29].xyzw  // r14.y <- shadowPosition.y
  dp4 r11.w, r5.xyzw, cb2[r10.w + 30].xyzw  // r11.w <- shadowPosition.z
  dp4 r12.w, r5.xyzw, cb2[r10.w + 31].xyzw  // r12.w <- shadowPosition.w
  add r14.z, r11.w, -cb2[44].x  // r14.z <- shadowPosition.z
  div r14.xyz, r14.xyzx, r12.wwww

#line 233
  mad r13.zw, r14.xxxy, cb2[27].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r14.xy, r13.zwzz  // r14.x <- base_uv.x; r14.y <- base_uv.y
  add r13.zw, r13.zzzw, -r14.xxxy  // r13.z <- s; r13.w <- t
  add r14.xy, r14.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r14.xy, r14.xyxx, cb2[27].zwzz

#line 246
  mad r15.xy, -r13.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r15.y <- uw0; r15.x <- vw0
  mad r15.zw, r13.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r15.z <- uw2; r15.w <- vw2
  mad r16.xy, -r13.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r16.xy, r16.xyxx, r15.yxyy
  add r16.zw, r13.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r13.zw, r13.zzzw, r15.zzzw
  add r17.xw, r16.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r17.x <- u0; r17.w <- v0
  mul r17.yz, r16.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r17.z <- u1; r17.y <- v1
  add r16.xy, r13.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r16.x <- u2; r16.y <- v2
  mul r11.w, r15.x, r15.y
  mad r18.xyzw, r17.xwzw, cb2[27].zwzw, r14.xyxy

#line 213
  sample_c r12.w, r18.xyxx, t7.xxxx, s0, r14.z  // r12.w <- <SampleTextureAndCompare_id111 return value>

#line 255
  mul r13.zw, r15.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 213
  sample_c r14.w, r18.zwzz, t7.xxxx, s0, r14.z  // r14.w <- <SampleTextureAndCompare_id111 return value>

#line 253
  mul r13.z, r13.z, r14.w
  mad r11.w, r11.w, r12.w, r13.z  // r11.w <- shadow

#line 258
  mul r15.xy, r15.xyxx, r15.zwzz
  mov r16.zw, r17.wwwy
  mad r18.xyzw, r16.xzxw, cb2[27].zwzw, r14.xyxy

#line 213
  sample_c r12.w, r18.xyxx, t7.xxxx, s0, r14.z  // r12.w <- <SampleTextureAndCompare_id111 return value>

#line 254
  mad r11.w, r15.x, r12.w, r11.w
  mad r19.xyzw, r17.xyzy, cb2[27].zwzw, r14.xyxy

#line 213
  sample_c r12.w, r19.xyxx, t7.xxxx, s0, r14.z

#line 255
  mad r11.w, r13.w, r12.w, r11.w

#line 213
  sample_c r12.w, r19.zwzz, t7.xxxx, s0, r14.z

#line 256
  mad r11.w, r12.w, l(49.000000), r11.w

#line 259
  mul r13.zw, r15.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 213
  sample_c r12.w, r18.zwzz, t7.xxxx, s0, r14.z

#line 257
  mad r11.w, r13.z, r12.w, r11.w
  mov r17.y, r16.y
  mad r17.xyzw, r17.xyzy, cb2[27].zwzw, r14.xyxy

#line 213
  sample_c r12.w, r17.xyxx, t7.xxxx, s0, r14.z

#line 258
  mad r11.w, r15.y, r12.w, r11.w

#line 213
  sample_c r12.w, r17.zwzz, t7.xxxx, s0, r14.z

#line 259
  mad r11.w, r13.w, r12.w, r11.w
  mul r12.w, r15.w, r15.z
  mad r13.zw, r16.xxxy, cb2[27].zzzw, r14.xxxy

#line 213
  sample_c r13.z, r13.zwzz, t7.xxxx, s0, r14.z  // r13.z <- <SampleTextureAndCompare_id111 return value>

#line 260
  mad r11.w, r12.w, r13.z, r11.w
  mul r12.w, r11.w, l(0.006944)  // r12.w <- shadow

#line 350
  iadd r13.z, r7.w, l(-1)
  add r13.z, -cb2[r13.z + 46].x, cb2[r7.w + 46].x
  movc r8.w, r8.w, r13.z, cb2[r7.w + 46].x  // r8.w <- splitSize
  add r7.w, -r6.w, cb2[r7.w + 46].x
  div r7.w, r7.w, r8.w  // r7.w <- splitDist
  lt r8.w, r7.w, l(0.200000)

#line 288
  iadd r10.w, r10.w, l(4)
  dp4 r14.x, r5.xyzw, cb2[r10.w + 28].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r5.xyzw, cb2[r10.w + 29].xyzw  // r14.y <- shadowPosition.y
  dp4 r13.z, r5.xyzw, cb2[r10.w + 30].xyzw  // r13.z <- shadowPosition.z
  dp4 r5.x, r5.xyzw, cb2[r10.w + 31].xyzw  // r5.x <- shadowPosition.w
  add r14.z, r13.z, -cb2[44].x  // r14.z <- shadowPosition.z
  div r5.xyz, r14.xyzx, r5.xxxx  // r5.x <- shadowPosition.x; r5.y <- shadowPosition.y; r5.z <- shadowPosition.z

#line 233
  mad r5.xy, r5.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r13.zw, r5.xxxy  // r13.z <- base_uv.x; r13.w <- base_uv.y
  add r5.xy, r5.xyxx, -r13.zwzz  // r5.x <- s; r5.y <- t
  add r13.zw, r13.zzzw, l(0.000000, 0.000000, -0.500000, -0.500000)
  mul r13.zw, r13.zzzw, cb2[27].zzzw

#line 246
  mad r14.xy, -r5.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r14.y <- uw0; r14.x <- vw0
  mad r14.zw, r5.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r14.z <- uw2; r14.w <- vw2
  mad r15.xy, -r5.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r15.xy, r15.xyxx, r14.yxyy
  add r15.zw, r5.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r5.xy, r5.xyxx, r14.zwzz
  add r16.xw, r15.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r16.x <- u0; r16.w <- v0
  mul r16.yz, r15.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r16.z <- u1; r16.y <- v1
  add r15.xy, r5.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r15.x <- u2; r15.y <- v2
  mad r17.xyzw, r16.xwzw, cb2[27].zwzw, r13.zwzw

#line 213
  sample_c r5.x, r17.xyxx, t7.xxxx, s0, r5.z  // r5.x <- <SampleTextureAndCompare_id111 return value>
  sample_c r5.y, r17.zwzz, t7.xxxx, s0, r5.z  // r5.y <- <SampleTextureAndCompare_id111 return value>

#line 257
  mov r15.zw, r16.wwwy
  mad r17.xyzw, r15.xzxw, cb2[27].zwzw, r13.zwzw

#line 213
  sample_c r10.w, r17.xyxx, t7.xxxx, s0, r5.z  // r10.w <- <SampleTextureAndCompare_id111 return value>

#line 256
  mad r18.xyzw, r16.xyzy, cb2[27].zwzw, r13.zwzw

#line 213
  sample_c r15.z, r18.xyxx, t7.xxxx, s0, r5.z  // r15.z <- <SampleTextureAndCompare_id111 return value>
  sample_c r15.w, r18.zwzz, t7.xxxx, s0, r5.z  // r15.w <- <SampleTextureAndCompare_id111 return value>
  sample_c r16.w, r17.zwzz, t7.xxxx, s0, r5.z  // r16.w <- <SampleTextureAndCompare_id111 return value>

#line 258
  mov r16.y, r15.y
  mad r17.xyzw, r16.xyzy, cb2[27].zwzw, r13.zwzw

#line 213
  sample_c r16.x, r17.xyxx, t7.xxxx, s0, r5.z  // r16.x <- <SampleTextureAndCompare_id111 return value>
  sample_c r16.y, r17.zwzz, t7.xxxx, s0, r5.z  // r16.y <- <SampleTextureAndCompare_id111 return value>

#line 260
  mad r13.zw, r15.xxxy, cb2[27].zzzw, r13.zzzw

#line 213
  sample_c r5.z, r13.zwzz, t7.xxxx, s0, r5.z  // r5.z <- <SampleTextureAndCompare_id111 return value>

#line 352
  if_nz r8.w

#line 355
    if_z r9.w
      mul_sat r7.w, r7.w, l(5.000000)
      mad r8.w, r7.w, l(-2.000000), l(3.000000)
      mul r7.w, r7.w, r7.w
      mul r7.w, r7.w, r8.w  // r7.w <- lerpAmt

#line 252
      mul r8.w, r14.x, r14.y
      mul r5.y, r14.x, r5.y
      mul r5.y, r5.y, l(7.000000)
      mad r5.x, r8.w, r5.x, r5.y  // r5.x <- shadow

#line 258
      mul r13.zw, r14.xxxy, r14.zzzw

#line 254
      mad r5.x, r13.z, r10.w, r5.x
      mul r5.y, r14.y, r15.z
      mad r5.x, r5.y, l(7.000000), r5.x
      mad r5.x, r15.w, l(49.000000), r5.x
      mul r5.y, r14.z, r16.w
      mad r5.x, r5.y, l(7.000000), r5.x
      mad r5.x, r13.w, r16.x, r5.x
      mul r5.y, r14.w, r16.y
      mad r5.x, r5.y, l(7.000000), r5.x
      mul r5.y, r14.w, r14.z
      mad r5.x, r5.y, r5.z, r5.x
      mul r5.x, r5.x, l(0.006944)

#line 361
      mad r5.y, r11.w, l(0.006944), -r5.x
      mad r12.w, r7.w, r5.y, r5.x
    endif 
  endif   // r12.w <- shadow

#line 452
  mul r5.xyz, r12.wwww, cb2[26].xyzx
  mul r5.xyz, r4.wwww, r5.xyzx  // r5.x <- streams.lightColorNdotL_id40.x; r5.y <- streams.lightColorNdotL_id40.y; r5.z <- streams.lightColorNdotL_id40.z

#line 490
  add r14.xyz, r7.xyzx, -cb2[25].xyzx
  dp3 r7.w, r14.xyzx, r14.xyzx
  rsq r7.w, r7.w
  mul r14.xyz, r7.wwww, r14.xyzx  // r14.x <- streams.H_id68.x; r14.y <- streams.H_id68.y; r14.z <- streams.H_id68.z
  dp3 r7.w, r8.xyzx, r14.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotH_id69
  dp3 r8.w, -cb2[25].xyzx, r14.xyzx
  max r8.w, r8.w, l(0.000100)  // r8.w <- streams.LdotH_id70

#line 734
  mul r14.xyz, r5.xyzx, r10.xyzx

#line 866
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 434
  add r15.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r8.w, -r8.w, l(1.000000)
  mul r9.w, r8.w, r8.w
  mul r9.w, r9.w, r9.w
  mul r8.w, r8.w, r9.w
  mad r15.xyz, r15.xyzx, r8.wwww, r11.xyzx  // r15.x <- <FresnelSchlick_id180 return value>.x; r15.y <- <FresnelSchlick_id180 return value>.y; r15.z <- <FresnelSchlick_id180 return value>.z

#line 429
  mul r8.w, r13.x, l(0.500000)  // r8.w <- k
  mad r9.w, -r13.x, l(0.500000), l(1.000000)
  mad r10.w, r4.w, r9.w, r8.w
  div r10.w, r4.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id198 return value>
  mad r8.w, r13.y, r9.w, r8.w
  div r8.w, r13.y, r8.w  // r8.w <- <VisibilityhSchlickGGX_id198 return value>

#line 549
  mul r8.w, r8.w, r10.w
  mul r4.w, r13.y, r4.w
  div r4.w, r8.w, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id200 return value>

#line 544
  mul r8.w, r13.x, r13.x  // r8.w <- alphaR2
  mul r7.w, r7.w, r7.w
  mad r9.w, r13.x, r13.x, l(-1.000000)
  mad r7.w, r7.w, r9.w, l(1.000000)
  max r7.w, r7.w, l(0.000100)
  mul r7.w, r7.w, r7.w
  mul r7.w, r7.w, l(3.141593)
  div r7.w, r8.w, r7.w  // r7.w <- <NormalDistributionGGX_id214 return value>

#line 728
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r7.wwww, r15.xyzx
  mul r5.xyz, r5.xyzx, r15.xyzx

#line 870
  mad r12.xyz, r5.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 856
  iadd r4.z, r4.z, l(1)

#line 872
endloop 

#line 641
add r0.x, -r0.w, l(1.000000)  // r0.x <- x

#line 649
mul r0.y, r0.x, r0.x

#line 657
mul r0.z, r0.y, l(1.895000)

#line 649
mad r0.z, r0.x, l(-0.168800), r0.z
mad r0.w, r1.w, l(-4.853000), l(0.990300)
mul r4.z, r1.w, r1.w
mad r0.w, r4.z, l(8.404000), r0.w
mul r4.w, r1.w, r4.z
mad r0.w, r4.w, l(-5.069000), r0.w
min_sat r0.z, r0.w, r0.z  // r0.z <- bias

#line 657
mad r0.w, r0.x, l(1.699000), l(0.604500)
mad r0.w, r1.w, l(-0.522800), r0.w
mad r0.w, r0.y, l(-3.603000), r0.w
mul r1.w, r0.x, r1.w
mad r0.w, r1.w, l(1.404000), r0.w
mad r0.w, r4.z, l(0.193900), r0.w
mul r0.x, r0.x, r0.y
mad_sat r0.x, r0.x, l(2.661000), r0.w  // r0.x <- delta
add r0.x, -r0.z, r0.x  // r0.x <- scale
mul_sat r0.y, r3.y, l(50.000000)
mul r0.y, r0.y, r0.z  // r0.y <- bias
mad r0.xyz, r3.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id215 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id215 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id215 return value>.z

#line 715
mul r0.xyz, r0.xyzx, cb2[50].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id444 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id444 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id444 return value>.z

#line 884
mad r0.xyz, r2.xyzx, cb2[50].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 887
mad r0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id66.x; r0.y <- streams.shadingColor_id66.y; r0.z <- streams.shadingColor_id66.z

#line 567
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id19.x; r2.y <- streams.PositionWS_id19.y; r2.z <- streams.PositionWS_id19.z
mov r3.xyz, cb1[6].xyzx  // r3.x <- streams.matDiffuseVisible_id62.x; r3.y <- streams.matDiffuseVisible_id62.y; r3.z <- streams.matDiffuseVisible_id62.z
mov r5.xyz, r1.xyzx  // r5.x <- streams.normalWS_id16.x; r5.y <- streams.normalWS_id16.y; r5.z <- streams.normalWS_id16.z
mov r6.x, r4.x  // r6.x <- streams.lightIndex_id84
mov r6.yzw, l(0,0,0,0)  // r6.y <- directLightingContribution.x; r6.z <- directLightingContribution.y; r6.w <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r2.w
  breakc_nz r1.w
  if_nz r1.w
    break 
  endif 

#line 400
  ld r7.xyzw, r6.xxxx, t4.xyzw  // r7.x <- realLightIndex
  iadd r6.x, r6.x, l(1)  // r6.x <- streams.lightIndex_id84
  ishl r1.w, r7.x, l(1)
  ld r7.xyzw, r1.wwww, t5.xyzw  // r7.x <- pointLight1.x; r7.y <- pointLight1.y; r7.z <- pointLight1.z; r7.w <- pointLight1.w
  iadd r1.w, r1.w, l(1)
  ld r8.xyzw, r1.wwww, t5.xyzw  // r8.x <- pointLight2.x; r8.y <- pointLight2.y; r8.z <- pointLight2.z

#line 319
  add r7.xyz, -r2.xyzx, r7.xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z
  dp3 r1.w, r7.xyzx, r7.xyzx
  sqrt r4.z, r1.w  // r4.z <- lightVectorLength
  div r7.xyz, r7.xyzx, r4.zzzz  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 282
  max r4.z, r1.w, l(0.000100)
  div r4.z, l(1.000000, 1.000000, 1.000000, 1.000000), r4.z  // r4.z <- attenuation

#line 223
  mul r1.w, r7.w, r1.w  // r1.w <- factor
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id87 return value>

#line 283
  mul r1.w, r1.w, r4.z  // r1.w <- attenuation

#line 325
  mul r8.xyz, r1.wwww, r8.xyzx  // r8.x <- streams.lightColor_id39.x; r8.y <- streams.lightColor_id39.y; r8.z <- streams.lightColor_id39.z

#line 498
  dp3 r1.w, r5.xyzx, r7.xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id43
  mul r7.xyz, r1.wwww, r8.xyzx  // r7.x <- streams.lightColorNdotL_id40.x; r7.y <- streams.lightColorNdotL_id40.y; r7.z <- streams.lightColorNdotL_id40.z

#line 486
  mul r7.xyz, r3.xyzx, r7.xyzx

#line 577
  mad r6.yzw, r7.xxyz, l(0.000000, 0.318310, 0.318310, 0.318310), r6.yyzw

#line 567
  iadd r0.w, r0.w, l(1)

#line 579
endloop   // r6.x <- streams.lightIndex_id84

#line 587
mov r2.xyz, v0.xyzx
mov r3.xyz, cb1[6].xyzx
mov r4.xzw, r1.xxyz  // r4.x <- streams.normalWS_id16.x; r4.z <- streams.normalWS_id16.y; r4.w <- streams.normalWS_id16.z
mov r5.xyz, r6.yzwy  // r5.x <- directLightingContribution.x; r5.y <- directLightingContribution.y; r5.z <- directLightingContribution.z
mov r0.w, r6.x  // r0.w <- streams.lightIndex_id84
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r3.w
  breakc_nz r2.w
  if_nz r2.w
    break 
  endif 

#line 381
  ld r7.xyzw, r0.wwww, t4.xyzw  // r7.x <- realLightIndex
  iadd r0.w, r0.w, l(1)  // r0.w <- streams.lightIndex_id84
  ishl r2.w, r7.x, l(2)
  ld r7.xyzw, r2.wwww, t6.xyzw  // r7.x <- spotLight1.x; r7.y <- spotLight1.y; r7.z <- spotLight1.z

#line 387
  iadd r8.xyz, r2.wwww, l(1, 2, 3, 0)
  ld r9.xyzw, r8.xxxx, t6.xyzw  // r9.x <- spotLight2.x; r9.y <- spotLight2.y; r9.z <- spotLight2.z
  ld r10.xyzw, r8.yyyy, t6.xyzw  // r10.x <- spotLight3.x; r10.y <- spotLight3.y; r10.z <- spotLight3.z
  ld r8.xyzw, r8.zzzz, t6.xyzw  // r8.x <- spotLight4.x; r8.y <- spotLight4.y; r8.z <- spotLight4.z

#line 304
  add r7.xyz, -r2.xyzx, r7.xyzx  // r7.x <- lightVector.x; r7.y <- lightVector.y; r7.z <- lightVector.z
  dp3 r2.w, r7.xyzx, r7.xyzx
  sqrt r5.w, r2.w  // r5.w <- lightVectorLength
  div r7.xyz, r7.xyzx, r5.wwww  // r7.x <- lightVectorNorm.x; r7.y <- lightVectorNorm.y; r7.z <- lightVectorNorm.z

#line 275
  max r5.w, r2.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 217
  mul r2.w, r10.z, r2.w  // r2.w <- factor
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id95 return value>

#line 276
  mul r2.w, r2.w, r5.w  // r2.w <- attenuation

#line 267
  dp3 r5.w, -r9.xyzx, r7.xyzx  // r5.w <- cd
  mad_sat r5.w, r5.w, r10.x, r10.y  // r5.w <- attenuation
  mul r5.w, r5.w, r5.w

#line 313
  mul r2.w, r2.w, r5.w  // r2.w <- attenuation
  mul r8.xyz, r2.wwww, r8.xyzx  // r8.x <- streams.lightColor_id39.x; r8.y <- streams.lightColor_id39.y; r8.z <- streams.lightColor_id39.z

#line 468
  dp3 r2.w, r4.xzwx, r7.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id43
  mul r7.xyz, r2.wwww, r8.xyzx  // r7.x <- streams.lightColorNdotL_id40.x; r7.y <- streams.lightColorNdotL_id40.y; r7.z <- streams.lightColorNdotL_id40.z

#line 486
  mul r7.xyz, r3.xyzx, r7.xyzx

#line 597
  mad r5.xyz, r7.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r5.xyzx

#line 587
  iadd r1.w, r1.w, l(1)

#line 599
endloop   // r0.w <- streams.lightIndex_id84

#line 288
mov r2.w, l(1.000000)

#line 607
mov r3.xyz, v0.xyzx  // r3.x <- streams.PositionWS_id19.x; r3.y <- streams.PositionWS_id19.y; r3.z <- streams.PositionWS_id19.z
mov r3.w, v2.x  // r3.w <- streams.DepthVS_id20
mov r4.xzw, cb1[6].xxyz  // r4.x <- streams.matDiffuseVisible_id62.x; r4.z <- streams.matDiffuseVisible_id62.y; r4.w <- streams.matDiffuseVisible_id62.z
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id16.x; r6.y <- streams.normalWS_id16.y; r6.z <- streams.normalWS_id16.z
mov r7.xyz, r5.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, l(1)
  breakc_nz r1.w
  ige r1.w, r0.w, cb2[24].y
  if_nz r1.w
    break 
  endif 

#line 450
  dp3 r1.w, r6.xyzx, -cb2[25].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id43

#line 331
  ishl r5.w, r0.w, l(2)  // r5.w <- cascadeIndexBase

#line 338
  lt r6.w, cb2[r5.w + 46].x, r3.w

#line 341
  and r6.w, r6.w, l(1)  // r6.w <- cascadeIndex

#line 338
  iadd r8.xy, r5.wwww, l(1, 2, 0, 0)
  lt r7.w, cb2[r8.x + 46].x, r3.w

#line 341
  movc r6.w, r7.w, l(2), r6.w

#line 338
  lt r7.w, cb2[r8.y + 46].x, r3.w

#line 341
  movc r6.w, r7.w, l(3), r6.w

#line 295
  add r8.x, -r1.w, l(1.000000)
  max r8.x, r8.x, l(0.000000)  // r8.x <- normalOffsetScale
  mul r8.x, r4.y, r8.x

#line 345
  mad r2.xyz, r8.xxxx, r6.xyzx, r3.xyzx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 288
  iadd r5.w, r5.w, r6.w
  ishl r8.x, r5.w, l(2)
  dp4 r9.x, r2.xyzw, cb2[r8.x + 28].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r2.xyzw, cb2[r8.x + 29].xyzw  // r9.y <- shadowPosition.y
  dp4 r8.y, r2.xyzw, cb2[r8.x + 30].xyzw  // r8.y <- shadowPosition.z
  dp4 r8.z, r2.xyzw, cb2[r8.x + 31].xyzw  // r8.z <- shadowPosition.w
  add r9.z, r8.y, -cb2[44].x  // r9.z <- shadowPosition.z
  div r8.yzw, r9.xxyz, r8.zzzz  // r8.y <- shadowPosition.x; r8.z <- shadowPosition.y; r8.w <- shadowPosition.z

#line 233
  mad r8.yz, r8.yyzy, cb2[27].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r9.xy, r8.yzyy  // r9.x <- base_uv.x; r9.y <- base_uv.y
  add r8.yz, r8.yyzy, -r9.xxyx  // r8.y <- s; r8.z <- t
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r9.xy, r9.xyxx, cb2[27].zwzz

#line 246
  mad r9.zw, -r8.zzzy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r9.w <- uw0; r9.z <- vw0
  mad r10.xy, r8.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r10.x <- uw2; r10.y <- vw2
  mad r10.zw, -r8.yyyz, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r10.zw, r10.zzzw, r9.wwwz
  add r11.xy, r8.yzyy, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r8.yz, r8.yyzy, r10.xxyx
  add r12.xw, r10.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r12.x <- u0; r12.w <- v0
  mul r12.yz, r11.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r12.z <- u1; r12.y <- v1
  add r11.xy, r8.yzyy, l(2.000000, 2.000000, 0.000000, 0.000000)  // r11.x <- u2; r11.y <- v2
  mul r8.y, r9.z, r9.w
  mad r13.xyzw, r12.xwzw, cb2[27].zwzw, r9.xyxy

#line 213
  sample_c r8.z, r13.xyxx, t7.xxxx, s0, r8.w  // r8.z <- <SampleTextureAndCompare_id111 return value>

#line 255
  mul r10.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 213
  sample_c r13.x, r13.zwzz, t7.xxxx, s0, r8.w  // r13.x <- <SampleTextureAndCompare_id111 return value>

#line 253
  mul r10.z, r10.z, r13.x
  mad r8.y, r8.y, r8.z, r10.z  // r8.y <- shadow

#line 258
  mul r9.zw, r9.zzzw, r10.xxxy
  mov r11.zw, r12.wwwy
  mad r13.xyzw, r11.xzxw, cb2[27].zwzw, r9.xyxy

#line 213
  sample_c r8.z, r13.xyxx, t7.xxxx, s0, r8.w  // r8.z <- <SampleTextureAndCompare_id111 return value>

#line 254
  mad r8.y, r9.z, r8.z, r8.y
  mad r14.xyzw, r12.xyzy, cb2[27].zwzw, r9.xyxy

#line 213
  sample_c r8.z, r14.xyxx, t7.xxxx, s0, r8.w

#line 255
  mad r8.y, r10.w, r8.z, r8.y

#line 213
  sample_c r8.z, r14.zwzz, t7.xxxx, s0, r8.w

#line 256
  mad r8.y, r8.z, l(49.000000), r8.y

#line 259
  mul r10.zw, r10.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 213
  sample_c r8.z, r13.zwzz, t7.xxxx, s0, r8.w

#line 257
  mad r8.y, r10.z, r8.z, r8.y
  mov r12.y, r11.y
  mad r12.xyzw, r12.xyzy, cb2[27].zwzw, r9.xyxy

#line 213
  sample_c r8.z, r12.xyxx, t7.xxxx, s0, r8.w

#line 258
  mad r8.y, r9.w, r8.z, r8.y

#line 213
  sample_c r8.z, r12.zwzz, t7.xxxx, s0, r8.w

#line 259
  mad r8.y, r10.w, r8.z, r8.y
  mul r8.z, r10.y, r10.x
  mad r9.xy, r11.xyxx, cb2[27].zwzz, r9.xyxx

#line 213
  sample_c r8.w, r9.xyxx, t7.xxxx, s0, r8.w  // r8.w <- <SampleTextureAndCompare_id111 return value>

#line 260
  mad r8.y, r8.z, r8.w, r8.y
  mul r8.z, r8.y, l(0.006944)  // r8.z <- shadow

#line 350
  iadd r8.w, r5.w, l(-1)
  add r8.w, -cb2[r8.w + 46].x, cb2[r5.w + 46].x
  movc r6.w, r6.w, r8.w, cb2[r5.w + 46].x  // r6.w <- splitSize
  add r5.w, -r3.w, cb2[r5.w + 46].x
  div r5.w, r5.w, r6.w  // r5.w <- splitDist
  lt r6.w, r5.w, l(0.200000)

#line 288
  iadd r8.x, r8.x, l(4)
  dp4 r9.x, r2.xyzw, cb2[r8.x + 28].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r2.xyzw, cb2[r8.x + 29].xyzw  // r9.y <- shadowPosition.y
  dp4 r8.w, r2.xyzw, cb2[r8.x + 30].xyzw  // r8.w <- shadowPosition.z
  dp4 r2.x, r2.xyzw, cb2[r8.x + 31].xyzw  // r2.x <- shadowPosition.w
  add r9.z, r8.w, -cb2[44].x  // r9.z <- shadowPosition.z
  div r2.xyz, r9.xyzx, r2.xxxx  // r2.x <- shadowPosition.x; r2.y <- shadowPosition.y; r2.z <- shadowPosition.z

#line 233
  mad r2.xy, r2.xyxx, cb2[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r8.xw, r2.xxxy  // r8.x <- base_uv.x; r8.w <- base_uv.y
  add r2.xy, r2.xyxx, -r8.xwxx  // r2.x <- s; r2.y <- t
  add r8.xw, r8.xxxw, l(-0.500000, 0.000000, 0.000000, -0.500000)
  mul r8.xw, r8.xxxw, cb2[27].zzzw

#line 246
  mad r9.xy, -r2.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.y <- uw0; r9.x <- vw0
  mad r9.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uw2; r9.w <- vw2
  mad r10.xy, -r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.zw, r2.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r2.xy, r2.xyxx, r9.zwzz
  add r11.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r11.x <- u0; r11.w <- v0
  mul r11.yz, r10.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r11.z <- u1; r11.y <- v1
  add r10.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r10.x <- u2; r10.y <- v2
  mad r12.xyzw, r11.xwzw, cb2[27].zwzw, r8.xwxw

#line 213
  sample_c r2.x, r12.xyxx, t7.xxxx, s0, r2.z  // r2.x <- <SampleTextureAndCompare_id111 return value>
  sample_c r2.y, r12.zwzz, t7.xxxx, s0, r2.z  // r2.y <- <SampleTextureAndCompare_id111 return value>

#line 257
  mov r10.zw, r11.wwwy
  mad r12.xyzw, r10.xzxw, cb2[27].zwzw, r8.xwxw

#line 213
  sample_c r10.z, r12.xyxx, t7.xxxx, s0, r2.z  // r10.z <- <SampleTextureAndCompare_id111 return value>

#line 256
  mad r13.xyzw, r11.xyzy, cb2[27].zwzw, r8.xwxw

#line 213
  sample_c r10.w, r13.xyxx, t7.xxxx, s0, r2.z  // r10.w <- <SampleTextureAndCompare_id111 return value>
  sample_c r11.w, r13.zwzz, t7.xxxx, s0, r2.z  // r11.w <- <SampleTextureAndCompare_id111 return value>
  sample_c r12.x, r12.zwzz, t7.xxxx, s0, r2.z  // r12.x <- <SampleTextureAndCompare_id111 return value>

#line 258
  mov r11.y, r10.y
  mad r13.xyzw, r11.xyzy, cb2[27].zwzw, r8.xwxw

#line 213
  sample_c r11.x, r13.xyxx, t7.xxxx, s0, r2.z  // r11.x <- <SampleTextureAndCompare_id111 return value>
  sample_c r11.y, r13.zwzz, t7.xxxx, s0, r2.z  // r11.y <- <SampleTextureAndCompare_id111 return value>

#line 260
  mad r8.xw, r10.xxxy, cb2[27].zzzw, r8.xxxw

#line 213
  sample_c r2.z, r8.xwxx, t7.xxxx, s0, r2.z  // r2.z <- <SampleTextureAndCompare_id111 return value>

#line 352
  if_nz r6.w

#line 355
    if_z r7.w
      mul_sat r5.w, r5.w, l(5.000000)
      mad r6.w, r5.w, l(-2.000000), l(3.000000)
      mul r5.w, r5.w, r5.w
      mul r5.w, r5.w, r6.w  // r5.w <- lerpAmt

#line 252
      mul r6.w, r9.x, r9.y
      mul r2.y, r9.x, r2.y
      mul r2.y, r2.y, l(7.000000)
      mad r2.x, r6.w, r2.x, r2.y  // r2.x <- shadow

#line 258
      mul r8.xw, r9.xxxy, r9.zzzw

#line 254
      mad r2.x, r8.x, r10.z, r2.x
      mul r2.y, r9.y, r10.w
      mad r2.x, r2.y, l(7.000000), r2.x
      mad r2.x, r11.w, l(49.000000), r2.x
      mul r2.y, r9.z, r12.x
      mad r2.x, r2.y, l(7.000000), r2.x
      mad r2.x, r8.w, r11.x, r2.x
      mul r2.y, r9.w, r11.y
      mad r2.x, r2.y, l(7.000000), r2.x
      mul r2.y, r9.w, r9.z
      mad r2.x, r2.y, r2.z, r2.x
      mul r2.x, r2.x, l(0.006944)

#line 361
      mad r2.y, r8.y, l(0.006944), -r2.x
      mad r8.z, r5.w, r2.y, r2.x
    endif 
  endif   // r8.z <- shadow

#line 452
  mul r2.xyz, r8.zzzz, cb2[26].xyzx
  mul r2.xyz, r1.wwww, r2.xyzx  // r2.x <- streams.lightColorNdotL_id40.x; r2.y <- streams.lightColorNdotL_id40.y; r2.z <- streams.lightColorNdotL_id40.z

#line 486
  mul r2.xyz, r2.xyzx, r4.xzwx

#line 617
  mad r7.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx

#line 607
  iadd r0.w, r0.w, l(1)

#line 619
endloop 

#line 439
mul r1.xyz, cb1[6].xyzx, cb2[50].xyzx  // r1.x <- <ComputeEnvironmentLightContribution_id450 return value>.x; r1.y <- <ComputeEnvironmentLightContribution_id450 return value>.y; r1.z <- <ComputeEnvironmentLightContribution_id450 return value>.z

#line 630
mad r1.xyz, r7.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r1.xyzx  // r1.x <- streams.shadingColor_id66.x; r1.y <- streams.shadingColor_id66.y; r1.z <- streams.shadingColor_id66.z

#line 790
add r1.xyz, -r0.xyzx, r1.xyzx
mad o0.xyz, cb1[5].yyyy, r1.xyzx, r0.xyzx

#line 1084
mov o0.w, cb1[6].w
ret 
// Approximately 699 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id82 = 64;
const static int TMaxLightCount_id95 = 1;
const static int TCascadeCountBase_id158 = 4;
const static int TLightCountBase_id159 = 1;
const static int TCascadeCount_id163 = 4;
const static int TLightCount_id164 = 1;
const static bool TBlendCascades_id165 = true;
const static bool TDepthRangeAuto_id166 = true;
const static bool TCascadeDebug_id167 = false;
const static int TFilterSize_id169 = 5;
const static bool TIsNormalXY1_id182 = true;
const static bool TScaleAndBias_id183 = true;
const static bool TInvertY_id184 = true;
const static bool TInvert_id193 = false;
const static bool TIsEnergyConservative_id204 = false;
static const float PI_id206 = 3.14159265358979323846;
SamplerComparisonState LinearClampCompareLessEqualSampler_id132 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture2D Texture_id172;
SamplerState Sampler_id173;
Texture2D Texture_id178;
Texture2D Texture_id186;
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id97;
struct PS_STREAMS 
{
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float4 PositionWS_id19;
    float2 TexCoord_id148;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3x3 tangentToWorld_id17;
    float3 viewWS_id61;
    float3 shadingColor_id66;
    float matBlend_id37;
    float3 matNormal_id45;
    float4 matColorBase_id46;
    float4 matDiffuse_id47;
    float3 matDiffuseVisible_id62;
    float3 matSpecular_id49;
    float3 matSpecularVisible_id64;
    float matSpecularIntensity_id50;
    float matGlossiness_id48;
    float alphaRoughness_id63;
    float matAmbientOcclusion_id51;
    float matAmbientOcclusionDirectLightingFactor_id52;
    float matCavity_id53;
    float matCavityDiffuse_id54;
    float matCavitySpecular_id55;
    float4 matEmissive_id56;
    float matEmissiveIntensity_id57;
    float2 matDiffuseSpecularAlphaBlend_id58;
    float3 matAlphaBlendColor_id59;
    float matAlphaDiscard_id60;
    float shadingColorAlpha_id67;
    float3 normalWS_id16;
    float3 lightDirectionWS_id38;
    float3 lightColor_id39;
    float3 lightColorNdotL_id40;
    float3 envLightDiffuseColor_id41;
    float3 envLightSpecularColor_id42;
    float lightDirectAmbientOcclusion_id44;
    float NdotL_id43;
    float NdotV_id65;
    uint2 lightData_id83;
    int lightIndex_id84;
    float3 shadowColor_id76;
    float3 H_id68;
    float NdotH_id69;
    float LdotH_id70;
    float VdotH_id71;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id18;
    float3 meshNormal_id14;
    float4 meshTangent_id15;
    float2 TexCoord_id148;
    float4 PositionH_id21;
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id148 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
    float4 meshTangent_id15 : TANGENT;
    float2 TexCoord_id148 : TEXCOORD0;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerMaterial 
{
    float2 scale_id175;
    float2 offset_id176;
    float2 scale_id180;
    float2 offset_id181;
    float2 scale_id188;
    float2 offset_id189;
    float constantFloat_id190;
    float4 constantColor_id198;
    float constantFloat_id200;
    float constantFloat_id213;
    float4 constantColor_id215;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
    float NearClipPlane_id77 = 1.0f;
    float FarClipPlane_id78 = 100.0f;
    float2 ZProjection_id79;
    float2 ViewSize_id80;
    float AspectRatio_id81;
    float ClusterDepthScale_id87;
    float ClusterDepthBias_id88;
    int LightCount_id94;
    DirectionalLightData Lights_id96[TMaxLightCount_id95];
    float2 ShadowMapTextureSize_id98;
    float2 ShadowMapTextureTexelSize_id99;
    float4x4 WorldToShadowCascadeUV_id160[TCascadeCountBase_id158 * TLightCountBase_id159];
    float DepthBiases_id161[TLightCountBase_id159];
    float OffsetScales_id162[TLightCountBase_id159];
    float CascadeDepthSplits_id168[TCascadeCount_id163 * TLightCount_id164];
    float Bias_id170;
    float3 AmbientLight_id171;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id101;
    float2 Texture1TexelSize_id103;
    float2 Texture2TexelSize_id105;
    float2 Texture3TexelSize_id107;
    float2 Texture4TexelSize_id109;
    float2 Texture5TexelSize_id111;
    float2 Texture6TexelSize_id113;
    float2 Texture7TexelSize_id115;
    float2 Texture8TexelSize_id117;
    float2 Texture9TexelSize_id119;
};
float SampleTextureAndCompare_id111(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
float SmoothDistanceAttenuation_id95(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id87(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id107(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id98;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id99;

    {
        float uw0 = (4 - 3 * s);
        float uw1 = 7;
        float uw2 = (1 + 3 * s);
        float u0 = (3 - 2 * s) / uw0 - 2;
        float u1 = (3 + s) / uw1;
        float u2 = s / uw2 + 2;
        float vw0 = (4 - 3 * t);
        float vw1 = 7;
        float vw2 = (1 + 3 * t);
        float v0 = (3 - 2 * t) / vw0 - 2;
        float v1 = (3 + t) / vw1;
        float v2 = t / vw2 + 2;
        shadow += uw0 * vw0 * SampleTextureAndCompare_id111(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id111(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id111(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id111(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id111(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id111(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id111(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id111(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id111(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id97(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id96(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id95(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id88(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id87(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id110(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id107(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id109(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id108(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id98(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id96(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id97(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
void ProcessLight_id90(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id88(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
void ComputeShadow_id102(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id108(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id163;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id163 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id168[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id109(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id110(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id163 - 1)
            {
            }
            else if (TBlendCascades_id165)
            {
                float nextShadow = ComputeShadowFromCascade_id110(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id101(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id94(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id93(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id93.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id93.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id93.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id93.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id98(streams, spotLight);
}
void ComputeShadow_id86(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id85(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id90(streams, pointLight);
}
void PrepareLightData_id89(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id235(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float VisibilityhSchlickGGX_id198(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id180(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float3 ComputeEnvironmentLightContribution_id450(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id292(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id282(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id101(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id102(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id283()
{
    return LightCount_id94;
}
int GetMaxLightCount_id284()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id280()
{
}
void PrepareDirectLight_id273(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id93(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id94(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id276(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id275(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id271()
{
}
float3 ComputeDirectLightContribution_id449(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id206 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id26(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id263(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id85(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id86(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id267(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id266(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id265(inout PS_STREAMS streams)
{
    PrepareLightData_id89(streams);
}
void PrepareMaterialForLightingAndShading_id245(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id235(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id244(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id12(inout PS_STREAMS streams, float3 normalInTangentSpace)
{
    streams.normalWS_id16 = normalize(mul(normalInTangentSpace, streams.tangentToWorld_id17));
}
float4 Compute_id447()
{
    return constantColor_id215;
}
float NormalDistributionGGX_id214(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    return alphaR2 / (PI_id206 * pow(max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001), 2.0f));
}
float VisibilitySmithSchlickGGX_id200(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id198(alphaR, nDotL) * VisibilityhSchlickGGX_id198(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id186(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id180(f0, 1.0f, lOrVDotH);
}
void Compute_id487(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id244(streams);
    PrepareMaterialForLightingAndShading_id245(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id265(streams);
        const int maxLightCount = GetMaxLightCount_id266(streams);
        int count = GetLightCount_id267(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id263(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id449(streams);
            }
        }
    }

    {
        PrepareDirectLights_id271();
        const int maxLightCount = GetMaxLightCount_id275(streams);
        int count = GetLightCount_id276(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id273(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id449(streams);
            }
        }
    }

    {
        PrepareDirectLights_id280();
        const int maxLightCount = GetMaxLightCount_id284();
        int count = GetLightCount_id283();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id282(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id449(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id292(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id450(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id206 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id472(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id447();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id215(float3 specularColor, float alphaR, float nDotV)
{
    float x = 1 - alphaR;
    float y = nDotV;
    float b1 = -0.1688;
    float b2 = 1.895;
    float b3 = 0.9903;
    float b4 = -4.853;
    float b5 = 8.404;
    float b6 = -5.069;
    float bias = saturate(min(b1 * x + b2 * x * x, b3 + b4 * y + b5 * y * y + b6 * y * y * y));
    float d0 = 0.6045;
    float d1 = 1.699;
    float d2 = -0.5228;
    float d3 = -3.603;
    float d4 = 1.404;
    float d5 = 0.1939;
    float d6 = 2.661;
    float delta = saturate(d0 + d1 * x + d2 * y + d3 * x * x + d4 * x * y + d5 * y * y + d6 * x * x * x);
    float scale = delta - bias;
    bias *= saturate(50.0 * specularColor.y);
    return specularColor * scale + bias;
}
float Compute_id365(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id214(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id336(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id200(streams.alphaRoughness_id63, streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id307(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id186(f0, streams.LdotH_id70);
}
float GetFilterSquareRoughnessAdjustment_id152(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
float4 BasicBlend_id542(float4 backColor, float4 frontColor, float3 interColor)
{
    return float4(frontColor.a * backColor.a * interColor + frontColor.a * (1.0f - backColor.a) * frontColor.rgb + (1.0f - frontColor.a) * backColor.a * backColor.rgb, lerp(frontColor.a, 1.0f, backColor.a));
}
float4 Compute_id299()
{
    return float4(constantFloat_id190, constantFloat_id190, constantFloat_id190, constantFloat_id190);
}
float4 Compute_id297(inout PS_STREAMS streams)
{
    return Texture_id186.Sample(Sampler_id173, streams.TexCoord_id148 * scale_id188 + offset_id189).r;
}
void ResetStream_id252()
{
}
void Compute_id251(inout PS_STREAMS streams)
{

    {
        Compute_id472(streams);
    }

    {
        Compute_id487(streams);
    }
}
float4 Compute_id445()
{
    return float4(constantFloat_id213, constantFloat_id213, constantFloat_id213, constantFloat_id213);
}
float3 ComputeEnvironmentLightContribution_id444(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id215(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id395(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
float3 ComputeDirectLightContribution_id443(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id307(streams, specularColor);
    float geometricShadowing = Compute_id336(streams);
    float normalDistribution = Compute_id365(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id394(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id206 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialForLightingAndShading_id217(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id152(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id216(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
float4 Compute_id305()
{
    return float4(constantFloat_id200, constantFloat_id200, constantFloat_id200, constantFloat_id200);
}
float4 Compute_id303()
{
    return constantColor_id198;
}
float4 Compute_id302(inout PS_STREAMS streams)
{
    float4 backColor = Compute_id297(streams);
    float4 frontColor = Compute_id299();
    float3 interColor = frontColor.rgb + backColor.rgb;
    return BasicBlend_id542(backColor, frontColor, interColor);
}
float4 Compute_id295(inout PS_STREAMS streams)
{
    return Texture_id178.Sample(Sampler_id173, streams.TexCoord_id148 * scale_id180 + offset_id181).rgba;
}
float4 Compute_id293(inout PS_STREAMS streams)
{
    return Texture_id172.Sample(Sampler_id173, streams.TexCoord_id148 * scale_id175 + offset_id176).rgba;
}
void ResetStream_id255(inout PS_STREAMS streams)
{
    ResetStream_id252();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id537(inout PS_STREAMS streams)
{
    float3 backupShadingColor = streams.shadingColor_id66;
    float blending = streams.matBlend_id37;
    streams.shadingColor_id66 = 0;
    Compute_id251(streams);
    streams.shadingColor_id66 = lerp(backupShadingColor, streams.shadingColor_id66, blending);
}
void Compute_id532(inout PS_STREAMS streams)
{
    streams.matBlend_id37 = Compute_id445().r;
}
void Compute_id527(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id12(streams, streams.matNormal_id45);
    ResetLightStream_id216(streams);
    PrepareMaterialForLightingAndShading_id217(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id265(streams);
        const int maxLightCount = GetMaxLightCount_id266(streams);
        int count = GetLightCount_id267(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id263(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id394(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id443(streams);
            }
        }
    }

    {
        PrepareDirectLights_id271();
        const int maxLightCount = GetMaxLightCount_id275(streams);
        int count = GetLightCount_id276(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id273(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id394(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id443(streams);
            }
        }
    }

    {
        PrepareDirectLights_id280();
        const int maxLightCount = GetMaxLightCount_id284();
        int count = GetLightCount_id283();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id282(streams, i);
            PrepareMaterialPerDirectLight_id26(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id394(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id443(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id292(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id395(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id444(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id206 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id512(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id305().r;
}
void Compute_id507(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id303().rgb;
}
void Compute_id502(inout PS_STREAMS streams)
{
    float glossiness = Compute_id302(streams).r;
    streams.matGlossiness_id48 = glossiness;
}
void Compute_id497(inout PS_STREAMS streams)
{
    float4 normal = Compute_id295(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.y = -normal.y;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id45 = normal.xyz;
}
void Compute_id492(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id293(streams);
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id257(inout PS_STREAMS streams)
{
    ResetStream_id255(streams);
    streams.matNormal_id45 = float3(0, 0, 1);
    streams.matColorBase_id46 = 0.0f;
    streams.matDiffuse_id47 = 0.0f;
    streams.matDiffuseVisible_id62 = 0.0f;
    streams.matSpecular_id49 = 0.0f;
    streams.matSpecularVisible_id64 = 0.0f;
    streams.matSpecularIntensity_id50 = 1.0f;
    streams.matGlossiness_id48 = 0.0f;
    streams.alphaRoughness_id63 = 1.0f;
    streams.matAmbientOcclusion_id51 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id52 = 0.0f;
    streams.matCavity_id53 = 1.0f;
    streams.matCavityDiffuse_id54 = 0.0f;
    streams.matCavitySpecular_id55 = 0.0f;
    streams.matEmissive_id56 = 0.0f;
    streams.matEmissiveIntensity_id57 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id58 = 1.0f;
    streams.matAlphaBlendColor_id59 = 1.0f;
    streams.matAlphaDiscard_id60 = 0.0f;
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id82(inout PS_STREAMS streams)
{

    {
        Compute_id492(streams);
    }

    {
        Compute_id497(streams);
    }

    {
        Compute_id502(streams);
    }

    {
        Compute_id507(streams);
    }

    {
        Compute_id512(streams);
    }

    {
        Compute_id527(streams);
    }

    {
        Compute_id532(streams);
    }

    {
        Compute_id537(streams);
    }
}
void ResetStream_id81(inout PS_STREAMS streams)
{
    ResetStream_id257(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
}
float3x3 GetTangentWorldTransform_id18()
{
    return (float3x3)World_id29;
}
float3x3 GetTangentMatrix_id9(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix;
    streams.meshNormal_id14 = normalize(streams.meshNormal_id14);
    float3 tangent = normalize(streams.meshTangent_id15.xyz);
    float3 bitangent = streams.meshTangent_id15.w * cross(streams.meshNormal_id14, tangent);
    tangentMatrix = float3x3(tangent, bitangent, streams.meshNormal_id14);
    return tangentMatrix;
}
void PostTransformPosition_id14(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = mul(streams.PositionWS_id19, ViewProjection_id26);
    streams.PositionH_id21 = streams.ShadingPosition_id0;
    streams.DepthVS_id20 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
float4 Shading_id27(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id81(streams);
    Compute_id82(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
{
}
void UpdateTangentToWorld_id11(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix = GetTangentMatrix_id9(streams);
    float3x3 tangentWorldTransform = GetTangentWorldTransform_id18();
    streams.tangentToWorld_id17 = mul(tangentMatrix, tangentWorldTransform);
}
void GenerateNormal_PS_id16()
{
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id1 = Shading_id27(streams);
}
void GenerateNormal_PS_id17(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id16();
    UpdateTangentToWorld_id11(streams);
}
void GenerateNormal_VS_id15(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = 0.0f;
}
void VSMain_id8(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id7(streams);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id20 = __input__.DepthVS_id20;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    GenerateNormal_PS_id17(streams);
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    streams.meshTangent_id15 = __input__.meshTangent_id15;
    streams.TexCoord_id148 = __input__.TexCoord_id148;
    VSMain_id8(streams);
    GenerateNormal_VS_id15(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.meshNormal_id14 = streams.meshNormal_id14;
    __output__.meshTangent_id15 = streams.meshTangent_id15;
    __output__.TexCoord_id148 = streams.TexCoord_id148;
    return __output__;
}
