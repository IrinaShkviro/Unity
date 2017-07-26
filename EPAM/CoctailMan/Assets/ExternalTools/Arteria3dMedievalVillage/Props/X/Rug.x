xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.26
// Website: http://www.unwrap3d.com
// Time: Sun Apr 03 23:29:57 2011

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
    25;
    -18.348200; -0.096554; -20.191601;,
    -32.803398; -0.096554; -20.191601;,
    -18.348200; 0.057626; -15.220900;,
    -32.803398; -0.096554; -15.220900;,
    -0.906630; 0.057626; -15.220900;,
    -0.906630; -0.096554; -19.361500;,
    17.514900; 0.057626; -15.220900;,
    17.514900; -0.096554; -20.191601;,
    32.288502; -0.096554; -15.220900;,
    32.803398; -0.096554; -20.191601;,
    -18.348200; 0.108384; -2.419880;,
    -31.914700; -0.045796; -2.419880;,
    -0.906630; 0.108384; -2.419880;,
    17.514900; 0.108384; -2.419880;,
    32.803398; -0.045796; -2.419880;,
    -18.348200; 0.057626; 8.358700;,
    -32.803398; -0.096554; 8.358700;,
    -18.348200; 0.057626; 20.191601;,
    -32.803398; -0.096554; 19.027100;,
    -0.906630; 0.057626; 8.358700;,
    -0.906630; 0.057626; 19.027100;,
    17.514900; 0.057626; 8.358700;,
    17.514900; 0.057626; 19.664301;,
    31.900101; -0.096554; 8.358700;,
    32.803398; -0.096554; 19.027100;;
    32;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;2, 4, 0;,
    3;4, 5, 0;,
    3;4, 6, 5;,
    3;6, 7, 5;,
    3;6, 8, 7;,
    3;8, 9, 7;,
    3;2, 3, 10;,
    3;3, 11, 10;,
    3;10, 12, 2;,
    3;12, 4, 2;,
    3;12, 13, 4;,
    3;13, 6, 4;,
    3;13, 14, 6;,
    3;14, 8, 6;,
    3;10, 11, 15;,
    3;11, 16, 15;,
    3;15, 16, 17;,
    3;16, 18, 17;,
    3;15, 17, 19;,
    3;17, 20, 19;,
    3;15, 19, 10;,
    3;19, 12, 10;,
    3;19, 20, 21;,
    3;20, 22, 21;,
    3;19, 21, 12;,
    3;21, 13, 12;,
    3;21, 22, 23;,
    3;22, 24, 23;,
    3;21, 23, 13;,
    3;23, 14, 13;;

   MeshNormals {
    25;
    0.000000; 0.999827; -0.018608;,
    0.000000; 1.000000; 0.000000;,
    -0.002667; 0.999935; -0.011101;,
    -0.005333; 0.999985; -0.001612;,
    0.000000; 0.999819; -0.019038;,
    0.000000; 0.999418; -0.034107;,
    0.005130; 0.999941; -0.009565;,
    0.005219; 0.999874; -0.014963;,
    0.010260; 0.999946; -0.001645;,
    0.010436; 0.999945; 0.001081;,
    -0.005507; 0.999985; 0.000323;,
    -0.011015; 0.999939; 0.000274;,
    0.000000; 1.000000; 0.000372;,
    0.005200; 0.999986; 0.000495;,
    0.010401; 0.999946; 0.000618;,
    -0.005507; 0.999983; 0.002120;,
    -0.011015; 0.999938; 0.001886;,
    -0.005333; 0.999986; 0.000000;,
    -0.010665; 0.999943; 0.000000;,
    0.000000; 0.999997; 0.002355;,
    0.000000; 1.000000; 0.000000;,
    0.005200; 0.999983; 0.002579;,
    0.005042; 0.999987; 0.000000;,
    0.010401; 0.999942; 0.002804;,
    0.010084; 0.999949; 0.000000;;
    32;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;2, 4, 0;,
    3;4, 5, 0;,
    3;4, 6, 5;,
    3;6, 7, 5;,
    3;6, 8, 7;,
    3;8, 9, 7;,
    3;2, 3, 10;,
    3;3, 11, 10;,
    3;10, 12, 2;,
    3;12, 4, 2;,
    3;12, 13, 4;,
    3;13, 6, 4;,
    3;13, 14, 6;,
    3;14, 8, 6;,
    3;10, 11, 15;,
    3;11, 16, 15;,
    3;15, 16, 17;,
    3;16, 18, 17;,
    3;15, 17, 19;,
    3;17, 20, 19;,
    3;15, 19, 10;,
    3;19, 12, 10;,
    3;19, 20, 21;,
    3;20, 22, 21;,
    3;19, 21, 12;,
    3;21, 13, 12;,
    3;21, 22, 23;,
    3;22, 24, 23;,
    3;21, 23, 13;,
    3;23, 14, 13;;
   }

   MeshTextureCoords {
    25;
    0.221909; 0.009217;,
    0.015478; 0.009217;,
    0.219100; 0.110033;,
    0.010456; 0.110033;,
    0.486120; 0.110033;,
    0.486259; 0.002628;,
    0.768143; 0.110033;,
    0.765461; 0.009217;,
    0.981662; 0.110033;,
    0.984522; 0.009217;,
    0.219100; 0.437812;,
    0.024062; 0.437812;,
    0.486120; 0.437812;,
    0.768143; 0.437812;,
    0.989544; 0.437812;,
    0.219100; 0.713804;,
    0.010456; 0.713804;,
    0.224718; 1.003822;,
    0.020500; 0.999945;,
    0.486120; 0.713804;,
    0.486398; 0.999945;,
    0.768143; 0.713804;,
    0.762780; 1.002066;,
    0.975716; 0.713804;,
    0.979500; 0.999945;;
   }

   MeshVertexColors {
    25;
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
    24; 1.000000; 1.000000; 1.000000; 1.000000;;
   }

   MeshMaterialList {
    1;
    32;
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

    Material Rug {
     1.000000; 1.000000; 1.000000; 1.000000;;
     1.000000;
     1.000000; 1.000000; 1.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "Rug.jpg";
     }
    }

   }
  }
}
