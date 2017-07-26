xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.26
// Website: http://www.unwrap3d.com
// Time: Sun Apr 03 23:26:48 2011

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 30;
}

// Start of Frames

Frame Body {
   FrameTransformMatrix {
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000;;
   }

   Mesh staticMesh {
    56;
    7.143855; 28.324150; -6.223645;,
    -7.143855; 28.324150; -6.223645;,
    7.143855; 28.324150; 6.223644;,
    -7.143855; 28.324150; 6.223644;,
    7.143855; 0.000000; -6.223645;,
    -7.143855; 0.000000; -6.223645;,
    7.143855; 28.324150; -6.223645;,
    -7.143855; 28.324150; -6.223645;,
    -5.338075; 13.605850; 6.223644;,
    -5.338075; 26.379049; 6.223644;,
    -7.143855; 13.605850; 6.223644;,
    -7.143855; 26.379049; 6.223644;,
    5.076475; 26.379049; 6.223644;,
    7.143855; 26.379049; 6.223644;,
    7.143855; 28.324150; 6.223644;,
    -7.143855; 28.324150; 6.223644;,
    5.076475; 13.605850; 6.223644;,
    7.143855; 13.605850; 6.223644;,
    5.076475; 13.605850; 5.753905;,
    5.076475; 26.379049; 5.753905;,
    -5.338075; 13.605850; 5.753905;,
    -5.338075; 26.379049; 5.753905;,
    7.143855; 0.000000; -6.223645;,
    7.143855; 28.324150; -6.223645;,
    7.143855; 0.000000; 6.223644;,
    7.143855; 28.324150; 6.223644;,
    7.143855; 11.881600; 6.223644;,
    7.143855; 26.379049; 6.223644;,
    7.143855; 13.605850; 6.223644;,
    -7.143855; 28.324150; -6.223645;,
    -7.143855; 0.000000; -6.223645;,
    -7.143855; 28.324150; 6.223644;,
    -7.143855; 0.000000; 6.223644;,
    -7.143855; 26.379049; 6.223644;,
    -7.143855; 11.881600; 6.223644;,
    -7.143855; 13.605850; 6.223644;,
    -7.143855; 0.000000; -6.223645;,
    7.143855; 0.000000; -6.223645;,
    -7.143855; 0.000000; 6.223644;,
    7.143855; 0.000000; 6.223644;,
    -5.043445; 0.000000; 6.223644;,
    4.935675; 0.000000; 6.223644;,
    4.935675; 11.881600; 6.223644;,
    7.143855; 11.881600; 6.223644;,
    -5.043445; 11.881600; 6.223644;,
    -7.143855; 11.881600; 6.223644;,
    4.935675; 0.000000; 6.223644;,
    7.143855; 0.000000; 6.223644;,
    4.935675; 1.539649; 6.223644;,
    4.935675; 1.539649; 5.753905;,
    4.935675; 11.881600; 5.753905;,
    -5.043445; 1.539649; 5.753905;,
    -5.043445; 11.881600; 5.753905;,
    -5.043445; 1.539649; 6.223644;,
    -5.043445; 0.000000; 6.223644;,
    -7.143855; 0.000000; 6.223644;;
    60;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;4, 5, 6;,
    3;5, 7, 6;,
    3;8, 9, 10;,
    3;9, 11, 10;,
    3;12, 13, 9;,
    3;13, 14, 9;,
    3;9, 14, 11;,
    3;14, 15, 11;,
    3;16, 17, 12;,
    3;17, 13, 12;,
    3;18, 19, 20;,
    3;19, 21, 20;,
    3;22, 23, 24;,
    3;23, 25, 24;,
    3;24, 25, 26;,
    3;25, 27, 26;,
    3;26, 27, 28;,
    3;29, 30, 31;,
    3;30, 32, 31;,
    3;31, 32, 33;,
    3;32, 34, 33;,
    3;33, 34, 35;,
    3;36, 37, 38;,
    3;37, 39, 38;,
    3;38, 39, 40;,
    3;39, 41, 40;,
    3;42, 43, 44;,
    3;43, 17, 44;,
    3;44, 17, 45;,
    3;17, 16, 45;,
    3;45, 16, 10;,
    3;16, 8, 10;,
    3;46, 47, 48;,
    3;47, 43, 48;,
    3;48, 43, 42;,
    3;49, 50, 51;,
    3;50, 52, 51;,
    3;48, 53, 46;,
    3;53, 54, 46;,
    3;53, 44, 54;,
    3;44, 45, 54;,
    3;54, 45, 55;,
    3;21, 9, 20;,
    3;9, 8, 20;,
    3;19, 12, 21;,
    3;12, 9, 21;,
    3;20, 8, 18;,
    3;8, 16, 18;,
    3;18, 16, 19;,
    3;16, 12, 19;,
    3;50, 42, 52;,
    3;42, 44, 52;,
    3;49, 48, 50;,
    3;48, 42, 50;,
    3;52, 44, 51;,
    3;44, 53, 51;,
    3;51, 53, 49;,
    3;53, 48, 49;;

   MeshNormals {
    56;
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 0.000000; -1.000000;,
    0.000000; 0.000000; -1.000000;,
    0.000000; 0.000000; -1.000000;,
    0.000000; 0.000000; -1.000000;,
    0.408248; 0.408248; 0.816497;,
    0.408248; -0.408248; 0.816497;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    -0.408248; -0.408248; 0.816497;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    -0.408248; 0.408248; 0.816497;,
    0.000000; 0.000000; 1.000000;,
    -0.577350; 0.577350; 0.577350;,
    -0.577350; -0.577350; 0.577350;,
    0.577350; 0.577350; 0.577350;,
    0.577350; -0.577350; 0.577350;,
    1.000000; 0.000000; 0.000000;,
    1.000000; 0.000000; 0.000000;,
    1.000000; 0.000000; 0.000000;,
    1.000000; 0.000000; 0.000000;,
    1.000000; 0.000000; 0.000000;,
    1.000000; 0.000000; 0.000000;,
    1.000000; 0.000000; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    0.000000; -1.000000; 0.000000;,
    0.000000; -1.000000; 0.000000;,
    0.000000; -1.000000; 0.000000;,
    0.000000; -1.000000; 0.000000;,
    0.000000; -1.000000; 0.000000;,
    0.000000; -1.000000; 0.000000;,
    -0.408248; -0.408248; 0.816497;,
    0.000000; 0.000000; 1.000000;,
    0.408248; -0.408248; 0.816497;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;,
    -0.408248; 0.408248; 0.816497;,
    -0.577350; 0.577350; 0.577350;,
    -0.577350; -0.577350; 0.577350;,
    0.577350; 0.577350; 0.577350;,
    0.577350; -0.577350; 0.577350;,
    0.408248; 0.408248; 0.816497;,
    0.000000; 0.000000; 1.000000;,
    0.000000; 0.000000; 1.000000;;
    60;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;4, 5, 6;,
    3;5, 7, 6;,
    3;8, 9, 10;,
    3;9, 11, 10;,
    3;12, 13, 9;,
    3;13, 14, 9;,
    3;9, 14, 11;,
    3;14, 15, 11;,
    3;16, 17, 12;,
    3;17, 13, 12;,
    3;18, 19, 20;,
    3;19, 21, 20;,
    3;22, 23, 24;,
    3;23, 25, 24;,
    3;24, 25, 26;,
    3;25, 27, 26;,
    3;26, 27, 28;,
    3;29, 30, 31;,
    3;30, 32, 31;,
    3;31, 32, 33;,
    3;32, 34, 33;,
    3;33, 34, 35;,
    3;36, 37, 38;,
    3;37, 39, 38;,
    3;38, 39, 40;,
    3;39, 41, 40;,
    3;42, 43, 44;,
    3;43, 17, 44;,
    3;44, 17, 45;,
    3;17, 16, 45;,
    3;45, 16, 10;,
    3;16, 8, 10;,
    3;46, 47, 48;,
    3;47, 43, 48;,
    3;48, 43, 42;,
    3;49, 50, 51;,
    3;50, 52, 51;,
    3;48, 53, 46;,
    3;53, 54, 46;,
    3;53, 44, 54;,
    3;44, 45, 54;,
    3;54, 45, 55;,
    3;21, 9, 20;,
    3;9, 8, 20;,
    3;19, 12, 21;,
    3;12, 9, 21;,
    3;20, 8, 18;,
    3;8, 16, 18;,
    3;18, 16, 19;,
    3;16, 12, 19;,
    3;50, 42, 52;,
    3;42, 44, 52;,
    3;49, 48, 50;,
    3;48, 42, 50;,
    3;52, 44, 51;,
    3;44, 53, 51;,
    3;51, 53, 49;,
    3;53, 48, 49;;
   }

   MeshTextureCoords {
    56;
    0.810519; 0.259409;,
    0.652515; 0.259409;,
    0.810519; 0.759646;,
    0.652515; 0.759646;,
    0.806656; 0.911433;,
    0.646851; 0.911433;,
    0.806656; 0.111433;,
    0.646851; 0.111433;,
    0.329503; 0.512546;,
    0.328963; 0.057677;,
    0.302035; 0.514599;,
    0.302787; 0.068352;,
    0.505752; 0.059729;,
    0.539219; 0.068745;,
    0.541514; 0.013624;,
    0.300477; 0.013348;,
    0.505175; 0.515147;,
    0.540001; 0.514806;,
    0.507342; 0.521248;,
    0.506980; 0.068136;,
    0.328513; 0.523597;,
    0.328643; 0.069847;,
    0.795161; 0.908094;,
    0.795161; 0.088094;,
    0.654534; 0.908094;,
    0.654534; 0.088094;,
    0.654534; 0.564115;,
    0.654534; 0.144405;,
    0.654534; 0.514198;,
    0.795161; 0.088094;,
    0.795161; 0.908094;,
    0.654534; 0.088094;,
    0.654534; 0.908094;,
    0.654534; 0.144405;,
    0.654534; 0.564115;,
    0.654534; 0.514198;,
    0.652515; 0.259409;,
    0.810519; 0.259409;,
    0.652515; 0.759646;,
    0.810519; 0.759646;,
    0.675743; 0.759646;,
    0.786099; 0.759646;,
    0.502963; 0.544823;,
    0.540619; 0.552939;,
    0.334812; 0.545029;,
    0.301409; 0.553207;,
    0.503123; 0.972853;,
    0.535641; 0.975667;,
    0.503688; 0.915608;,
    0.504056; 0.920278;,
    0.504564; 0.552392;,
    0.333537; 0.920713;,
    0.333035; 0.552369;,
    0.334018; 0.915483;,
    0.334668; 0.972967;,
    0.306442; 0.975690;;
   }

   MeshVertexColors {
    56;
    0; 1.000000; 1.000000; 1.000000; 1.000000;,
    1; 1.000000; 1.000000; 1.000000; 1.000000;,
    2; 1.000000; 1.000000; 1.000000; 1.000000;,
    3; 1.000000; 1.000000; 1.000000; 1.000000;,
    4; 1.000000; 1.000000; 1.000000; 1.000000;,
    5; 1.000000; 1.000000; 1.000000; 1.000000;,
    6; 1.000000; 1.000000; 1.000000; 1.000000;,
    7; 1.000000; 1.000000; 1.000000; 1.000000;,
    8; 1.000000; 1.000000; 1.000000; 1.000000;,
    9; 1.000000; 1.000000; 1.000000; 1.000000;,
    10; 1.000000; 1.000000; 1.000000; 1.000000;,
    11; 1.000000; 1.000000; 1.000000; 1.000000;,
    12; 1.000000; 1.000000; 1.000000; 1.000000;,
    13; 1.000000; 1.000000; 1.000000; 1.000000;,
    14; 1.000000; 1.000000; 1.000000; 1.000000;,
    15; 1.000000; 1.000000; 1.000000; 1.000000;,
    16; 1.000000; 1.000000; 1.000000; 1.000000;,
    17; 1.000000; 1.000000; 1.000000; 1.000000;,
    18; 1.000000; 1.000000; 1.000000; 1.000000;,
    19; 1.000000; 1.000000; 1.000000; 1.000000;,
    20; 1.000000; 1.000000; 1.000000; 1.000000;,
    21; 1.000000; 1.000000; 1.000000; 1.000000;,
    22; 1.000000; 1.000000; 1.000000; 1.000000;,
    23; 1.000000; 1.000000; 1.000000; 1.000000;,
    24; 1.000000; 1.000000; 1.000000; 1.000000;,
    25; 1.000000; 1.000000; 1.000000; 1.000000;,
    26; 1.000000; 1.000000; 1.000000; 1.000000;,
    27; 1.000000; 1.000000; 1.000000; 1.000000;,
    28; 1.000000; 1.000000; 1.000000; 1.000000;,
    29; 1.000000; 1.000000; 1.000000; 1.000000;,
    30; 1.000000; 1.000000; 1.000000; 1.000000;,
    31; 1.000000; 1.000000; 1.000000; 1.000000;,
    32; 1.000000; 1.000000; 1.000000; 1.000000;,
    33; 1.000000; 1.000000; 1.000000; 1.000000;,
    34; 1.000000; 1.000000; 1.000000; 1.000000;,
    35; 1.000000; 1.000000; 1.000000; 1.000000;,
    36; 1.000000; 1.000000; 1.000000; 1.000000;,
    37; 1.000000; 1.000000; 1.000000; 1.000000;,
    38; 1.000000; 1.000000; 1.000000; 1.000000;,
    39; 1.000000; 1.000000; 1.000000; 1.000000;,
    40; 1.000000; 1.000000; 1.000000; 1.000000;,
    41; 1.000000; 1.000000; 1.000000; 1.000000;,
    42; 1.000000; 1.000000; 1.000000; 1.000000;,
    43; 1.000000; 1.000000; 1.000000; 1.000000;,
    44; 1.000000; 1.000000; 1.000000; 1.000000;,
    45; 1.000000; 1.000000; 1.000000; 1.000000;,
    46; 1.000000; 1.000000; 1.000000; 1.000000;,
    47; 1.000000; 1.000000; 1.000000; 1.000000;,
    48; 1.000000; 1.000000; 1.000000; 1.000000;,
    49; 1.000000; 1.000000; 1.000000; 1.000000;,
    50; 1.000000; 1.000000; 1.000000; 1.000000;,
    51; 1.000000; 1.000000; 1.000000; 1.000000;,
    52; 1.000000; 1.000000; 1.000000; 1.000000;,
    53; 1.000000; 1.000000; 1.000000; 1.000000;,
    54; 1.000000; 1.000000; 1.000000; 1.000000;,
    55; 1.000000; 1.000000; 1.000000; 1.000000;;
   }

   MeshMaterialList {
    1;
    60;
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0;

    Material OrnateFurniture {
     1.000000; 1.000000; 1.000000; 1.000000;;
     1.000000;
     1.000000; 1.000000; 1.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "OrnateFurniture.jpg";
     }
    }

   }
  }
}
