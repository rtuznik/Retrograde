/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorConstantColorLink<Material.SpecularValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilityImplicit}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionBlinnPhong}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
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
cbuffer PerMaterial [Size: 48]
@C    constantColor_id172 => Material.DiffuseValue
@C    constantColor_id177 => Material.SpecularValue
@C    constantFloat_id179 => Material.SpecularIntensityValue
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
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (4-4)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
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
@S    NormalFromMesh => cac9ac354def411344b0994c9fd56e66
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
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceSetStreamFromComputeColor => 1d00f7d823647b307a55871a0b3eba09
@S    IMaterialSurfaceVertex => 8e13e0524d4025cb811c673aeb77f45b
@S    MaterialVertexStream => fe2d4e2abe57231a93785fe59684b199
@S    MaterialDisplacementStream => 5112948b0773a844410cc7c3df78184a
@S    IMaterialSurfaceDomain => a787b7e989be07714532cd1ffc35ef2a
@S    MaterialDomainStream => 8be905888c6f3153139bc1fa900fdf5f
@S    MaterialTessellationStream => 87652904dbe93d91999520c7e41f52a1
@S    ComputeColorConstantFloatLink => a459500fd7f6c5988997e81bf766f988
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
@S    MaterialSpecularMicrofacetVisibilityImplicit => 71acfad6c818096c1cd2e2b3e45c9b21
@S    MaterialSpecularMicrofacetNormalDistributionBlinnPhong => fc2aebd5862689be6d792d63d0448aac
***************************
*****     Stages      *****
***************************
@G    Vertex => d6a0409f78779f2bf44908689434043d
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
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
//
vs_4_0
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.normalWS_id16.x; o2.z <- <VSMain return value>.normalWS_id16.y; o2.w <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 762 "G:\Documents\Xenko Projects\Retrograde\Retrograde\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_86701153887e15588006f7b22fd6c45e.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 827
mov o0.xyzw, r0.xyzw

#line 752
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 827
mov o1.w, r1.x
mov o2.x, r1.x

#line 752
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 795
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 827
ret 
// Approximately 15 instruction slots used
@G    Pixel => f975538e38a3ed35853069e8ec184aaf
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id172;        // Offset:    0 Size:    16
//   float4 constantColor_id177;        // Offset:   16 Size:    16
//   float constantFloat_id179;         // Offset:   32 Size:     4
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
// LightClusters_id85                texture   uint2          3d    0        1
// LightIndices_id86                 texture    uint         buf    1        1
// PointLights_id90                  texture  float4         buf    2        1
// SpotLights_id93                   texture  float4         buf    3        1
// ShadowMapTexture_id97             texture  float4          2d    4        1
// PerMaterial                       cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
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
// NORMALWS                 0    yzw        2     NONE   float    yzw
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
dcl_constantbuffer cb1[51], dynamicIndexed
dcl_sampler s0, mode_comparison
dcl_resource_texture3d (uint,uint,uint,uint) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_buffer (float,float,float,float) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_output o0.xyzw
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.normalWS_id16.x; v2.z <- __input__.normalWS_id16.y; v2.w <- __input__.normalWS_id16.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 791 "G:\Documents\Xenko Projects\Retrograde\Retrograde\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_86701153887e15588006f7b22fd6c45e.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 766
add r1.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.viewWS_id61.x; r1.y <- streams.viewWS_id61.y; r1.z <- streams.viewWS_id61.z

#line 552
mul r2.xyz, cb0[1].xyzx, cb0[2].xxxx  // r2.x <- streams.matSpecularVisible_id64.x; r2.y <- streams.matSpecularVisible_id64.y; r2.z <- streams.matSpecularVisible_id64.z
dp3 r0.w, r0.xyzx, r1.xyzx
max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotV_id65

#line 439
add r1.w, v1.z, -cb1[22].z
div r1.w, cb1[22].w, r1.w  // r1.w <- depth
ftoi r3.xy, v1.xyxx  // r3.x <- shadingPosition.x; r3.y <- shadingPosition.y
mad r1.w, r1.w, cb1[23].w, cb1[24].x
log r1.w, r1.w
max r1.w, r1.w, l(0.000000)
ftoi r4.z, r1.w  // r4.z <- slice
ushr r4.xy, r3.xyxx, l(6)
mov r4.w, l(0)
ld r3.xyzw, r4.xyzw, t0.xyzw  // r3.x <- streams.lightData_id83.x; r3.y <- streams.lightData_id83.y

#line 542
and r1.w, r3.y, l(0x0000ffff)  // r1.w <- <GetMaxLightCount_id205 return value>

#line 600
mov r4.xyz, r0.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.yz, v0.yyzy  // r5.y <- streams.PositionWS_id19.y; r5.z <- streams.PositionWS_id19.z
mov r5.w, r1.x  // r5.w <- streams.viewWS_id61.x
mov r6.yz, r1.yyzy  // r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xy, cb0[0].xyxx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y
mov r8.x, cb0[0].z  // r8.x <- streams.matDiffuseVisible_id62.z
mov r8.yzw, r2.xxyz  // r8.y <- streams.matSpecularVisible_id64.x; r8.z <- streams.matSpecularVisible_id64.y; r8.w <- streams.matSpecularVisible_id64.z
mov r9.x, r3.x  // r9.x <- streams.lightIndex_id84
mov r9.yzw, l(0,0,0,0)  // r9.y <- directLightingContribution.x; r9.z <- directLightingContribution.y; r9.w <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.z, r2.w, r1.w
  breakc_nz r3.z
  if_nz r3.z
    break 
  endif 

#line 426
  ld r10.xyzw, r9.xxxx, t1.xyzw  // r10.x <- realLightIndex
  iadd r9.x, r9.x, l(1)  // r9.x <- streams.lightIndex_id84
  ishl r3.z, r10.x, l(1)
  ld r10.xyzw, r3.zzzz, t2.xyzw  // r10.x <- pointLight1.x; r10.y <- pointLight1.y; r10.z <- pointLight1.z; r10.w <- pointLight1.w
  iadd r3.z, r3.z, l(1)
  ld r11.xyzw, r3.zzzz, t2.xyzw  // r11.x <- pointLight2.x; r11.y <- pointLight2.y; r11.z <- pointLight2.z

#line 310
  mov r5.x, r4.w
  add r10.xyz, -r5.xyzx, r10.xyzx  // r10.x <- lightVector.x; r10.y <- lightVector.y; r10.z <- lightVector.z
  dp3 r3.z, r10.xyzx, r10.xyzx
  sqrt r3.w, r3.z  // r3.w <- lightVectorLength
  div r10.xyz, r10.xyzx, r3.wwww  // r10.x <- lightVectorNorm.x; r10.y <- lightVectorNorm.y; r10.z <- lightVectorNorm.z

#line 260
  max r3.w, r3.z, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 197
  mul r3.z, r10.w, r3.z  // r3.z <- factor
  mad r3.z, -r3.z, r3.z, l(1.000000)
  max r3.z, r3.z, l(0.000000)  // r3.z <- smoothFactor
  mul r3.z, r3.z, r3.z  // r3.z <- <SmoothDistanceAttenuation_id72 return value>

#line 261
  mul r3.z, r3.z, r3.w  // r3.z <- attenuation

#line 316
  mul r11.xyz, r3.zzzz, r11.xyzx  // r11.x <- streams.lightColor_id39.x; r11.y <- streams.lightColor_id39.y; r11.z <- streams.lightColor_id39.z

#line 532
  dp3 r3.z, r4.xyzx, r10.xyzx
  max r3.z, r3.z, l(0.000100)  // r3.z <- streams.NdotL_id43
  mul r11.xyz, r3.zzzz, r11.xyzx  // r11.x <- streams.lightColorNdotL_id40.x; r11.y <- streams.lightColorNdotL_id40.y; r11.z <- streams.lightColorNdotL_id40.z

#line 524
  mov r6.x, r5.w
  add r12.xyz, r10.xyzx, r6.xyzx
  dp3 r3.z, r12.xyzx, r12.xyzx
  rsq r3.z, r3.z
  mul r12.xyz, r3.zzzz, r12.xyzx  // r12.x <- streams.H_id68.x; r12.y <- streams.H_id68.y; r12.z <- streams.H_id68.z
  dp3 r3.z, r10.xyzx, r12.xyzx
  max r3.z, r3.z, l(0.000100)  // r3.z <- streams.LdotH_id70

#line 520
  mov r7.z, r8.x
  mul r10.xyz, r11.xyzx, r7.xyzx

#line 610
  mad r10.xyz, r10.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r9.yzwy  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 255
  add r12.xyz, -r8.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.z, -r3.z, l(1.000000)
  mul r3.w, r3.z, r3.z
  mul r3.w, r3.w, r3.w
  mul r3.z, r3.w, r3.z
  mad r12.xyz, r12.xyzx, r3.zzzz, r8.yzwy  // r12.x <- <FresnelSchlick_id155 return value>.x; r12.y <- <FresnelSchlick_id155 return value>.y; r12.z <- <FresnelSchlick_id155 return value>.z

#line 514
  mul r11.xyz, r11.xyzx, r12.xyzx

#line 614
  mad r9.yzw, r11.xxyz, l(0.000000, 0.079577, 0.079577, 0.079577), r10.xxyz  // r9.y <- directLightingContribution.x; r9.z <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 600
  iadd r2.w, r2.w, l(1)

#line 616
endloop   // r9.x <- streams.lightIndex_id84

#line 503
ushr r1.w, r3.y, l(16)  // r1.w <- <GetMaxLightCount_id214 return value>

#line 624
mov r3.xyz, r0.xyzx  // r3.x <- streams.normalWS_id16.x; r3.y <- streams.normalWS_id16.y; r3.z <- streams.normalWS_id16.z
mov r3.w, v0.x  // r3.w <- streams.PositionWS_id19.x
mov r4.yz, v0.yyzy  // r4.y <- streams.PositionWS_id19.y; r4.z <- streams.PositionWS_id19.z
mov r4.w, r1.x  // r4.w <- streams.viewWS_id61.x
mov r5.yz, r1.yyzy  // r5.y <- streams.viewWS_id61.y; r5.z <- streams.viewWS_id61.z
mov r6.xyz, cb0[0].xyzx  // r6.x <- streams.matDiffuseVisible_id62.x; r6.y <- streams.matDiffuseVisible_id62.y; r6.z <- streams.matDiffuseVisible_id62.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.matSpecularVisible_id64.x; r7.y <- streams.matSpecularVisible_id64.y; r7.z <- streams.matSpecularVisible_id64.z
mov r8.xyz, r9.yzwy  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r2.w, r9.x  // r2.w <- streams.lightIndex_id84
mov r5.w, l(0)  // r5.w <- i
loop 
  ige r6.w, r5.w, r1.w
  breakc_nz r6.w
  if_nz r6.w
    break 
  endif 

#line 395
  ld r10.xyzw, r2.wwww, t1.xyzw  // r10.x <- realLightIndex
  iadd r2.w, r2.w, l(1)  // r2.w <- streams.lightIndex_id84
  ishl r6.w, r10.x, l(2)
  ld r10.xyzw, r6.wwww, t3.xyzw  // r10.x <- spotLight1.x; r10.y <- spotLight1.y; r10.z <- spotLight1.z

#line 401
  iadd r11.xyz, r6.wwww, l(1, 2, 3, 0)
  ld r12.xyzw, r11.xxxx, t3.xyzw  // r12.x <- spotLight2.x; r12.y <- spotLight2.y; r12.z <- spotLight2.z
  ld r13.xyzw, r11.yyyy, t3.xyzw  // r13.x <- spotLight3.x; r13.y <- spotLight3.y; r13.z <- spotLight3.z
  ld r11.xyzw, r11.zzzz, t3.xyzw  // r11.x <- spotLight4.x; r11.y <- spotLight4.y; r11.z <- spotLight4.z

#line 282
  mov r4.x, r3.w
  add r10.xyz, -r4.xyzx, r10.xyzx  // r10.x <- lightVector.x; r10.y <- lightVector.y; r10.z <- lightVector.z
  dp3 r4.x, r10.xyzx, r10.xyzx
  sqrt r6.w, r4.x  // r6.w <- lightVectorLength
  div r10.xyz, r10.xyzx, r6.wwww  // r10.x <- lightVectorNorm.x; r10.y <- lightVectorNorm.y; r10.z <- lightVectorNorm.z

#line 249
  max r6.w, r4.x, l(0.000100)
  div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w  // r6.w <- attenuation

#line 191
  mul r4.x, r13.z, r4.x  // r4.x <- factor
  mad r4.x, -r4.x, r4.x, l(1.000000)
  max r4.x, r4.x, l(0.000000)  // r4.x <- smoothFactor
  mul r4.x, r4.x, r4.x  // r4.x <- <SmoothDistanceAttenuation_id80 return value>

#line 250
  mul r4.x, r4.x, r6.w  // r4.x <- attenuation

#line 241
  dp3 r6.w, -r12.xyzx, r10.xyzx  // r6.w <- cd
  mad_sat r6.w, r6.w, r13.x, r13.y  // r6.w <- attenuation
  mul r6.w, r6.w, r6.w

#line 291
  mul r4.x, r4.x, r6.w  // r4.x <- attenuation
  mul r11.xyz, r4.xxxx, r11.xyzx  // r11.x <- streams.lightColor_id39.x; r11.y <- streams.lightColor_id39.y; r11.z <- streams.lightColor_id39.z

#line 493
  dp3 r4.x, r3.xyzx, r10.xyzx
  max r4.x, r4.x, l(0.000100)  // r4.x <- streams.NdotL_id43
  mul r11.xyz, r4.xxxx, r11.xyzx  // r11.x <- streams.lightColorNdotL_id40.x; r11.y <- streams.lightColorNdotL_id40.y; r11.z <- streams.lightColorNdotL_id40.z

#line 524
  mov r5.x, r4.w
  add r12.xyz, r10.xyzx, r5.xyzx
  dp3 r4.x, r12.xyzx, r12.xyzx
  rsq r4.x, r4.x
  mul r12.xyz, r4.xxxx, r12.xyzx  // r12.x <- streams.H_id68.x; r12.y <- streams.H_id68.y; r12.z <- streams.H_id68.z
  dp3 r4.x, r10.xyzx, r12.xyzx
  max r4.x, r4.x, l(0.000100)  // r4.x <- streams.LdotH_id70

#line 520
  mul r10.xyz, r6.xyzx, r11.xyzx

#line 634
  mad r10.xyz, r10.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 255
  add r12.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.x, -r4.x, l(1.000000)
  mul r5.x, r4.x, r4.x
  mul r5.x, r5.x, r5.x
  mul r4.x, r4.x, r5.x
  mad r12.xyz, r12.xyzx, r4.xxxx, r7.xyzx  // r12.x <- <FresnelSchlick_id155 return value>.x; r12.y <- <FresnelSchlick_id155 return value>.y; r12.z <- <FresnelSchlick_id155 return value>.z

#line 514
  mul r11.xyz, r11.xyzx, r12.xyzx

#line 638
  mad r8.xyz, r11.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r10.xyzx  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z

#line 624
  iadd r5.w, r5.w, l(1)

#line 640
endloop   // r2.w <- streams.lightIndex_id84

#line 274
dp2 r1.w, cb1[45].xxxx, cb1[27].zzzz

#line 266
mov r3.w, l(1.000000)

#line 648
mov r4.xyz, r0.xyzx  // r4.x <- streams.normalWS_id16.x; r4.y <- streams.normalWS_id16.y; r4.z <- streams.normalWS_id16.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id19.x
mov r5.xy, v0.yzyy  // r5.x <- streams.PositionWS_id19.y; r5.y <- streams.PositionWS_id19.z
mov r5.z, v2.x  // r5.z <- streams.DepthVS_id20
mov r5.w, r1.x  // r5.w <- streams.viewWS_id61.x
mov r6.yz, r1.yyzy  // r6.y <- streams.viewWS_id61.y; r6.z <- streams.viewWS_id61.z
mov r7.xyz, cb0[0].xyzx  // r7.x <- streams.matDiffuseVisible_id62.x; r7.y <- streams.matDiffuseVisible_id62.y; r7.z <- streams.matDiffuseVisible_id62.z
mov r9.xyz, r2.xyzx  // r9.x <- streams.matSpecularVisible_id64.x; r9.y <- streams.matSpecularVisible_id64.y; r9.z <- streams.matSpecularVisible_id64.z
mov r10.xyz, r8.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r6.w, r2.w, l(1)
  breakc_nz r6.w
  ige r6.w, r2.w, cb1[24].y
  if_nz r6.w
    break 
  endif 

#line 475
  dp3 r6.w, r4.xyzx, -cb1[25].xyzx
  max r6.w, r6.w, l(0.000100)  // r6.w <- streams.NdotL_id43

#line 345
  ishl r7.w, r2.w, l(2)  // r7.w <- cascadeIndexBase

#line 352
  lt r8.w, cb1[r7.w + 46].x, r5.z

#line 355
  and r8.w, r8.w, l(1)  // r8.w <- cascadeIndex

#line 352
  iadd r11.xy, r7.wwww, l(1, 2, 0, 0)
  lt r9.w, cb1[r11.x + 46].x, r5.z

#line 355
  movc r8.w, r9.w, l(2), r8.w

#line 352
  lt r9.w, cb1[r11.y + 46].x, r5.z

#line 355
  movc r8.w, r9.w, l(3), r8.w

#line 273
  add r10.w, -r6.w, l(1.000000)
  max r10.w, r10.w, l(0.000000)  // r10.w <- normalOffsetScale
  mul r10.w, r1.w, r10.w

#line 359
  mov r11.x, r4.w
  mov r11.yz, r5.xxyx
  mad r3.xyz, r10.wwww, r4.xyzx, r11.xyzx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 266
  iadd r7.w, r7.w, r8.w
  ishl r10.w, r7.w, l(2)
  dp4 r11.x, r3.xyzw, cb1[r10.w + 28].xyzw  // r11.x <- shadowPosition.x
  dp4 r11.y, r3.xyzw, cb1[r10.w + 29].xyzw  // r11.y <- shadowPosition.y
  dp4 r11.w, r3.xyzw, cb1[r10.w + 30].xyzw  // r11.w <- shadowPosition.z
  dp4 r12.x, r3.xyzw, cb1[r10.w + 31].xyzw  // r12.x <- shadowPosition.w
  add r11.z, r11.w, -cb1[44].x  // r11.z <- shadowPosition.z
  div r11.xyz, r11.xyzx, r12.xxxx

#line 207
  mad r11.xy, r11.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r12.xy, r11.xyxx  // r12.x <- base_uv.x; r12.y <- base_uv.y
  add r11.xy, r11.xyxx, -r12.xyxx  // r11.x <- s; r11.y <- t
  add r12.xy, r12.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r12.xy, r12.xyxx, cb1[27].zwzz

#line 220
  mad r12.zw, -r11.yyyx, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 4.000000, 4.000000)  // r12.w <- uw0; r12.z <- vw0
  mad r13.xy, r11.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)  // r13.x <- uw2; r13.y <- vw2
  mad r13.zw, -r11.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, 3.000000, 3.000000)
  div r13.zw, r13.zzzw, r12.wwwz
  add r14.xy, r11.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r13.xyxx
  add r15.xw, r13.zzzw, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r15.x <- u0; r15.w <- v0
  mul r15.yz, r14.yyxy, l(0.000000, 0.142857, 0.142857, 0.000000)  // r15.z <- u1; r15.y <- v1
  add r14.xy, r11.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r14.x <- u2; r14.y <- v2
  mul r11.x, r12.z, r12.w
  mad r16.xyzw, r15.xwzw, cb1[27].zwzw, r12.xyxy

#line 187
  sample_c r11.y, r16.xyxx, t4.xxxx, s0, r11.z  // r11.y <- <SampleTextureAndCompare_id96 return value>

#line 229
  mul r13.zw, r12.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 187
  sample_c r11.w, r16.zwzz, t4.xxxx, s0, r11.z  // r11.w <- <SampleTextureAndCompare_id96 return value>

#line 227
  mul r11.w, r11.w, r13.z
  mad r11.x, r11.x, r11.y, r11.w  // r11.x <- shadow

#line 232
  mul r11.yw, r12.zzzw, r13.xxxy
  mov r14.zw, r15.wwwy
  mad r16.xyzw, r14.xzxw, cb1[27].zwzw, r12.xyxy

#line 187
  sample_c r12.z, r16.xyxx, t4.xxxx, s0, r11.z  // r12.z <- <SampleTextureAndCompare_id96 return value>

#line 228
  mad r11.x, r11.y, r12.z, r11.x
  mad r17.xyzw, r15.xyzy, cb1[27].zwzw, r12.xyxy

#line 187
  sample_c r11.y, r17.xyxx, t4.xxxx, s0, r11.z  // r11.y <- <SampleTextureAndCompare_id96 return value>

#line 229
  mad r11.x, r13.w, r11.y, r11.x

#line 187
  sample_c r11.y, r17.zwzz, t4.xxxx, s0, r11.z

#line 230
  mad r11.x, r11.y, l(49.000000), r11.x

#line 233
  mul r12.zw, r13.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 187
  sample_c r11.y, r16.zwzz, t4.xxxx, s0, r11.z

#line 231
  mad r11.x, r12.z, r11.y, r11.x
  mov r15.y, r14.y
  mad r15.xyzw, r15.xyzy, cb1[27].zwzw, r12.xyxy

#line 187
  sample_c r11.y, r15.xyxx, t4.xxxx, s0, r11.z

#line 232
  mad r11.x, r11.w, r11.y, r11.x

#line 187
  sample_c r11.y, r15.zwzz, t4.xxxx, s0, r11.z

#line 233
  mad r11.x, r12.w, r11.y, r11.x
  mul r11.y, r13.y, r13.x
  mad r12.xy, r14.xyxx, cb1[27].zwzz, r12.xyxx

#line 187
  sample_c r11.z, r12.xyxx, t4.xxxx, s0, r11.z  // r11.z <- <SampleTextureAndCompare_id96 return value>

#line 234
  mad r11.x, r11.y, r11.z, r11.x
  mul r11.y, r11.x, l(0.006944)  // r11.y <- shadow

#line 364
  iadd r11.z, r7.w, l(-1)
  add r11.z, -cb1[r11.z + 46].x, cb1[r7.w + 46].x
  movc r8.w, r8.w, r11.z, cb1[r7.w + 46].x  // r8.w <- splitSize
  add r7.w, -r5.z, cb1[r7.w + 46].x
  div r7.w, r7.w, r8.w  // r7.w <- splitDist
  lt r8.w, r7.w, l(0.200000)

#line 266
  iadd r10.w, r10.w, l(4)
  dp4 r12.x, r3.xyzw, cb1[r10.w + 28].xyzw  // r12.x <- shadowPosition.x
  dp4 r12.y, r3.xyzw, cb1[r10.w + 29].xyzw  // r12.y <- shadowPosition.y
  dp4 r11.z, r3.xyzw, cb1[r10.w + 30].xyzw  // r11.z <- shadowPosition.z
  dp4 r3.x, r3.xyzw, cb1[r10.w + 31].xyzw  // r3.x <- shadowPosition.w
  add r12.z, r11.z, -cb1[44].x  // r12.z <- shadowPosition.z
  div r3.xyz, r12.xyzx, r3.xxxx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 207
  mad r3.xy, r3.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r11.zw, r3.xxxy  // r11.z <- base_uv.x; r11.w <- base_uv.y
  add r3.xy, r3.xyxx, -r11.zwzz  // r3.x <- s; r3.y <- t
  add r11.zw, r11.zzzw, l(0.000000, 0.000000, -0.500000, -0.500000)
  mul r11.zw, r11.zzzw, cb1[27].zzzw

#line 220
  mad r12.xy, -r3.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r12.y <- uw0; r12.x <- vw0
  mad r12.zw, r3.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r12.z <- uw2; r12.w <- vw2
  mad r13.xy, -r3.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r13.xy, r13.xyxx, r12.yxyy
  add r13.zw, r3.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r3.xy, r3.xyxx, r12.zwzz
  add r14.xw, r13.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r14.x <- u0; r14.w <- v0
  mul r14.yz, r13.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r14.z <- u1; r14.y <- v1
  add r13.xy, r3.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r13.x <- u2; r13.y <- v2
  mad r15.xyzw, r14.xwzw, cb1[27].zwzw, r11.zwzw

#line 187
  sample_c r3.x, r15.xyxx, t4.xxxx, s0, r3.z  // r3.x <- <SampleTextureAndCompare_id96 return value>
  sample_c r3.y, r15.zwzz, t4.xxxx, s0, r3.z  // r3.y <- <SampleTextureAndCompare_id96 return value>

#line 231
  mov r13.zw, r14.wwwy
  mad r15.xyzw, r13.xzxw, cb1[27].zwzw, r11.zwzw

#line 187
  sample_c r10.w, r15.xyxx, t4.xxxx, s0, r3.z  // r10.w <- <SampleTextureAndCompare_id96 return value>

#line 230
  mad r16.xyzw, r14.xyzy, cb1[27].zwzw, r11.zwzw

#line 187
  sample_c r13.z, r16.xyxx, t4.xxxx, s0, r3.z  // r13.z <- <SampleTextureAndCompare_id96 return value>
  sample_c r13.w, r16.zwzz, t4.xxxx, s0, r3.z  // r13.w <- <SampleTextureAndCompare_id96 return value>
  sample_c r14.w, r15.zwzz, t4.xxxx, s0, r3.z  // r14.w <- <SampleTextureAndCompare_id96 return value>

#line 232
  mov r14.y, r13.y
  mad r15.xyzw, r14.xyzy, cb1[27].zwzw, r11.zwzw

#line 187
  sample_c r14.x, r15.xyxx, t4.xxxx, s0, r3.z  // r14.x <- <SampleTextureAndCompare_id96 return value>
  sample_c r14.y, r15.zwzz, t4.xxxx, s0, r3.z  // r14.y <- <SampleTextureAndCompare_id96 return value>

#line 234
  mad r11.zw, r13.xxxy, cb1[27].zzzw, r11.zzzw

#line 187
  sample_c r3.z, r11.zwzz, t4.xxxx, s0, r3.z  // r3.z <- <SampleTextureAndCompare_id96 return value>

#line 366
  if_nz r8.w

#line 369
    if_z r9.w
      mul_sat r7.w, r7.w, l(5.000000)
      mad r8.w, r7.w, l(-2.000000), l(3.000000)
      mul r7.w, r7.w, r7.w
      mul r7.w, r7.w, r8.w  // r7.w <- lerpAmt

#line 226
      mul r8.w, r12.x, r12.y
      mul r3.y, r12.x, r3.y
      mul r3.y, r3.y, l(7.000000)
      mad r3.x, r8.w, r3.x, r3.y  // r3.x <- shadow

#line 232
      mul r11.zw, r12.xxxy, r12.zzzw

#line 228
      mad r3.x, r11.z, r10.w, r3.x
      mul r3.y, r12.y, r13.z
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r13.w, l(49.000000), r3.x
      mul r3.y, r12.z, r14.w
      mad r3.x, r3.y, l(7.000000), r3.x
      mad r3.x, r11.w, r14.x, r3.x
      mul r3.y, r12.w, r14.y
      mad r3.x, r3.y, l(7.000000), r3.x
      mul r3.y, r12.w, r12.z
      mad r3.x, r3.y, r3.z, r3.x
      mul r3.x, r3.x, l(0.006944)

#line 375
      mad r3.y, r11.x, l(0.006944), -r3.x
      mad r11.y, r7.w, r3.y, r3.x
    endif 
  endif   // r11.y <- shadow

#line 477
  mul r3.xyz, r11.yyyy, cb1[26].xyzx
  mul r3.xyz, r6.wwww, r3.xyzx  // r3.x <- streams.lightColorNdotL_id40.x; r3.y <- streams.lightColorNdotL_id40.y; r3.z <- streams.lightColorNdotL_id40.z

#line 524
  mov r6.x, r5.w
  add r11.xyz, r6.xyzx, -cb1[25].xyzx
  dp3 r6.x, r11.xyzx, r11.xyzx
  rsq r6.x, r6.x
  mul r11.xyz, r6.xxxx, r11.xyzx  // r11.x <- streams.H_id68.x; r11.y <- streams.H_id68.y; r11.z <- streams.H_id68.z
  dp3 r6.x, -cb1[25].xyzx, r11.xyzx
  max r6.x, r6.x, l(0.000100)  // r6.x <- streams.LdotH_id70

#line 520
  mul r11.xyz, r3.xyzx, r7.xyzx

#line 658
  mad r11.xyz, r11.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 255
  add r12.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r6.x, -r6.x, l(1.000000)
  mul r6.w, r6.x, r6.x
  mul r6.w, r6.w, r6.w
  mul r6.x, r6.w, r6.x
  mad r12.xyz, r12.xyzx, r6.xxxx, r9.xyzx  // r12.x <- <FresnelSchlick_id155 return value>.x; r12.y <- <FresnelSchlick_id155 return value>.y; r12.z <- <FresnelSchlick_id155 return value>.z

#line 514
  mul r3.xyz, r3.xyzx, r12.xyzx

#line 662
  mad r10.xyz, r3.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r11.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 648
  iadd r2.w, r2.w, l(1)

#line 664
endloop 

#line 337
mad r0.x, r0.w, l(-0.522800), l(0.604500)
mul r0.y, r0.w, r0.w
mad_sat r0.x, r0.y, l(0.193900), r0.x  // r0.x <- delta

#line 340
mul r0.xyz, r0.xxxx, r2.xyzx  // r0.x <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id188 return value>.x; r0.y <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id188 return value>.y; r0.z <- <EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id188 return value>.z

#line 459
mul r0.xyz, r0.xyzx, cb1[50].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id377 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id377 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id377 return value>.z

#line 676
mad r0.xyz, cb0[0].xyzx, cb1[50].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 679
mad o0.xyz, r10.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 813
mov o0.w, cb0[0].w
ret 
// Approximately 332 instruction slots used
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
const static bool TIsEnergyConservative_id183 = false;
static const float PI_id185 = 3.14159265358979323846;
SamplerComparisonState LinearClampCompareLessEqualSampler_id132 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id97;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
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
    float4 PositionH_id21;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3 normalWS_id16;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float3 normalWS_id16 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
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
    float4 constantColor_id172;
    float4 constantColor_id177;
    float constantFloat_id179;
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
float SampleTextureAndCompare_id96(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
float SmoothDistanceAttenuation_id80(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id72(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id92(float2 position, float positionDepth)
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
        shadow += uw0 * vw0 * SampleTextureAndCompare_id96(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id96(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id96(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id96(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id96(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id96(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id96(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id96(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id96(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id82(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id81(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id80(d2, lightInvSquareRadius);
    return attenuation;
}
float3 FresnelSchlick_id155(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float GetDistanceAttenuation_id73(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id72(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id95(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id92(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id94(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id93(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id83(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id81(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id82(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float NormalDistributionBlinnPhong_id187(float alphaR, float nDotH)
{
    float alphaR2 = max(alphaR * alphaR, 0.1);
    return pow(nDotH, 2 / alphaR2 - 2) / (PI_id185 * alphaR2);
}
float VisibilityImplicit_id174(float nDotL, float nDotV)
{
    return 1.0f;
}
float3 FresnelSchlick_id161(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id155(f0, 1.0f, lOrVDotH);
}
void ProcessLight_id75(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id73(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float3 EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id188(float3 specularColor, float alphaR, float nDotV)
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
void ComputeShadow_id87(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id93(streams, lightIndex);
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
    shadowPosition += GetShadowPositionOffset_id94(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id95(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id95(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id86(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id79(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id78(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id83(streams, spotLight);
}
float Compute_id297(inout PS_STREAMS streams)
{
    return NormalDistributionBlinnPhong_id187(streams.alphaRoughness_id63, streams.NdotH_id69);
}
float Compute_id267(inout PS_STREAMS streams)
{
    return VisibilityImplicit_id174(streams.NdotL_id43, streams.NdotV_id65);
}
float3 Compute_id238(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id161(f0, streams.LdotH_id70);
}
void ComputeShadow_id71(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id70(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id75(streams, pointLight);
}
void PrepareLightData_id74(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id127(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id191()
{
}
float3 ComputeEnvironmentLightContribution_id377(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    return EnvironmentLightingDFG_GGX_Fresnel_SmithSchlickGGX_id188(specularColor, streams.alphaRoughness_id63, streams.NdotV_id65) * streams.envLightSpecularColor_id42;
}
float3 ComputeEnvironmentLightContribution_id328(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id231(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id221(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id86(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id87(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id222()
{
    return LightCount_id94;
}
int GetMaxLightCount_id223()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id219()
{
}
void PrepareDirectLight_id212(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id78(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id79(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id215(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id214(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id210()
{
}
float3 ComputeDirectLightContribution_id376(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id64;
    float3 fresnel = Compute_id238(streams, specularColor);
    float geometricShadowing = Compute_id267(streams);
    float normalDistribution = Compute_id297(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeDirectLightContribution_id327(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id185 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id27(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id202(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id70(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id71(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id206(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id205(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id204(inout PS_STREAMS streams)
{
    PrepareLightData_id74(streams);
}
void PrepareMaterialForLightingAndShading_id190(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id127(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id189(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id19(float3 normalInTangentSpace)
{
}
float4 Compute_id236()
{
    return float4(constantFloat_id179, constantFloat_id179, constantFloat_id179, constantFloat_id179);
}
float4 Compute_id234()
{
    return constantColor_id177;
}
float4 Compute_id232()
{
    return constantColor_id172;
}
void ResetStream_id194(inout PS_STREAMS streams)
{
    ResetStream_id191();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id407(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id189(streams);
    PrepareMaterialForLightingAndShading_id190(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id204(streams);
        const int maxLightCount = GetMaxLightCount_id205(streams);
        int count = GetLightCount_id206(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id202(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id327(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id376(streams);
            }
        }
    }

    {
        PrepareDirectLights_id210();
        const int maxLightCount = GetMaxLightCount_id214(streams);
        int count = GetLightCount_id215(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id212(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id327(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id376(streams);
            }
        }
    }

    {
        PrepareDirectLights_id219();
        const int maxLightCount = GetMaxLightCount_id223();
        int count = GetLightCount_id222();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id221(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id327(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id376(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id231(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id328(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id377(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id185 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id392(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id50 = Compute_id236().r;
}
void Compute_id387(inout PS_STREAMS streams)
{
    streams.matSpecular_id49 = Compute_id234().rgb;
}
void Compute_id382(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id232();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id196(inout PS_STREAMS streams)
{
    ResetStream_id194(streams);
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
void Compute_id67(inout PS_STREAMS streams)
{

    {
        Compute_id382(streams);
    }

    {
        Compute_id387(streams);
    }

    {
        Compute_id392(streams);
    }

    {
        Compute_id407(streams);
    }
}
void ResetStream_id66(inout PS_STREAMS streams)
{
    ResetStream_id196(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
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
float4 Shading_id28(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id66(streams);
    Compute_id67(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
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
    streams.ColorTarget_id1 = Shading_id28(streams);
}
void GenerateNormal_PS_id18(inout PS_STREAMS streams)
{
    streams.normalWS_id16 = normalize(streams.normalWS_id16);
}
void GenerateNormal_VS_id17(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = mul(streams.meshNormal_id14, (float3x3)WorldInverseTranspose_id31);
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
    streams.normalWS_id16 = __input__.normalWS_id16;
    GenerateNormal_PS_id18(streams);
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
    VSMain_id8(streams);
    GenerateNormal_VS_id17(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    return __output__;
}
