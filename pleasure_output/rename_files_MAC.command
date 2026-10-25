#!/bin/bash
# ============================================================================
#  RENAMER - "What Did Ancient Humans Do For Pleasure?"  (217 slots x 2 sec)
#
#  HOW TO USE: put this file in the folder with your Higgsfield downloads,
#  then in Terminal type:   bash rename_files_MAC.command
#
#  WHAT YOU GET: 217 files named 001.png to 217.png, one per slot.
#  Every slot has its own file, including the reuse slots (for example
#  016.png is a copy of 006.png), so you can select all 217 files and drag
#  them onto the timeline in one go. Each file is 2 seconds.
#
#  The 25 reuse slots are listed below and marked ">>> copy of" in Terminal.
#  On those, add the zoom or pan so they don't look like a frozen repeat:
#    016  <- reuses 006   (slow zoom in on the flames)
#    045  <- reuses 017   (slow pan right across the darkness)
#    059  <- reuses 057   (slow zoom in on the circled tusk)
#    066  <- reuses 053   (slow zoom in on the finger holes)
#    078  <- reuses 067   (slow zoom in on the carving hands)
#    081  <- reuses 075   (slow zoom out)
#    090  <- reuses 083   (slow zoom in on the drum)
#    100  <- reuses 048   (slow zoom in on the drumming fingers)
#    105  <- reuses 104   (slow pan across the map)
#    109  <- reuses 108   (slow zoom out)
#    122  <- reuses 121   (slow pan right to the stock chart)
#    124  <- reuses 102   (slow zoom in on one knucklebone)
#    142  <- reuses 132   (slow zoom in on the board)
#    146  <- reuses 136   (slow zoom in on the glow)
#    155  <- reuses 154   (slow pan right across the animals)
#    168  <- reuses 162   (slow pan across the moving animals)
#    174  <- reuses 082   (slow zoom out)
#    187  <- reuses 186   (slow zoom in on the silver)
#    193  <- reuses 191   (slow zoom in on the heart sign)
#    198  <- reuses 089   (slow zoom out)
#    205  <- reuses 043   (slow zoom in on the sparkling eyes)
#    208  <- reuses 207   (slow zoom in on the modern man's brain)
#    209  <- reuses 062   (slow zoom in on the hands)
#    210  <- reuses 057   (slow zoom out)
#    216  <- reuses 005   (slow zoom out)
#
#  Safe to run more than once. Also fixes folders where the previous renamer
#  already ran: "016 REUSE of 006 - zoom in.png" becomes "016.png".
# ============================================================================
cd "$(dirname "$0")" || exit 1
missing=0

new(){  # slot  job-id
  for f in *"$2"*; do
    [ -e "$f" ] || continue
    mv -n "$f" "$1.${f##*.}"; echo "$1   new image"; return
  done
  if ls "$1".* >/dev/null 2>&1; then echo "$1   new image"; return; fi
  echo "$1   !!! MISSING - download job $2 from Higgsfield"; missing=$((missing+1))
}

reuse(){  # slot  source-slot  move
  for f in "$1 REUSE of "*; do [ -e "$f" ] && mv -n "$f" "$1.${f##*.}"; done   # names from the previous renamer
  if ls "$1".* >/dev/null 2>&1; then echo "$1   >>> copy of $2  (add $3)"; return; fi
  src=$(ls "$2".* 2>/dev/null | head -1)
  if [ -z "$src" ]; then echo "$1   !!! cannot copy - $2 is missing"; missing=$((missing+1)); return; fi
  cp "$src" "$1.${src##*.}"
  echo "$1   >>> copy of $2  (add $3)"
}

ref(){  # job-id  name
  for f in *"$1"*; do [ -e "$f" ] && mv -n "$f" "$2.${f##*.}"; done
}

echo "Slot  What it is"
echo "----  ------------------------------------------"
new 001 35af5c24-d354-4cfb-9a55-9aa65a85bac8
new 002 2200f946-af62-45ac-b2af-82920dd5a559
new 003 524744b1-9e29-4e3c-85f9-7cc7b92d2ed9
new 004 693f220d-13d3-42f0-97ed-63e253dc5713
new 005 6c269729-70d0-4d71-bae7-7259fed27744
new 006 1d6b22d3-3ccf-45be-8db6-357cc237272b
new 007 de1d1148-dc6a-475b-9102-b69fc69abe15
new 008 893be1b4-8236-4e4b-aaa3-f2ce93a86de1
new 009 c52c5c82-6ab0-4ad7-ac85-0ede78e3df35
new 010 f2a0c7ea-9070-422c-aa5a-f539370e6f27
new 011 2e2f93d0-31cf-419c-b7b9-5f7b108dfa66
new 012 22dc3a1a-d212-4e85-bdaf-e26b7113eb48
new 013 c4e00698-c187-4335-9082-2b5f2d4dbcdb
new 014 0645cf8f-0e36-4bfe-8203-94d4ea9fdfda
new 015 0ecb1b6c-52e0-4b6d-9eb2-3159addf34c6
reuse 016 006 "zoom in"
new 017 d4f6c493-4d69-4afa-a1bf-a3aad1edff8d
new 018 1076f53a-6a5a-446c-b545-f0d88d6bd384
new 019 2d10e6eb-01a5-4888-807a-988911fa303f
new 020 436db394-8e68-416d-beb7-ddc845a34817
new 021 86dfc889-d3cd-4694-b955-09038272553f
new 022 3298df07-d87d-410f-91a5-a04bca83cc1a
new 023 f7afe2ba-a414-42dc-b65f-3ba9ad7d1e03
new 024 f1b3a43a-0bfd-4a93-bb52-f94a996822f7
new 025 2bee33e7-06ed-4028-97ee-f00ad7f942b5
new 026 e14e6531-542c-4204-b142-e4e663d9b7b4
new 027 3ebe2ab4-ac77-493e-aead-d7da4934b6df
new 028 855f4b35-89ce-4572-b270-794bd8643b2f
new 029 f99fea24-0044-4b14-8fc1-562e538ef213
new 030 369448ab-94e8-484d-868c-f51f10acb1b6
new 031 5ba5d412-9b18-4002-8126-4cc2b5e80a6d
new 032 61ecbaff-9ef1-47fe-88de-bc1a5d245877
new 033 b6ce3778-2bec-4ead-bd96-cff9ae8fcde3
new 034 ed2a1637-14dd-4092-90ba-056e12867a8c
new 035 cee6c05b-f87e-476a-8c38-304ef45a2c0d
new 036 d044ea4f-c0f6-4de9-8b5d-8fc79c934cec
new 037 ee88f58e-39f0-418a-9d41-b34399f8871d
new 038 05105b77-61dd-4a5b-8bef-12f1965d8859
new 039 ae993669-6c68-4e32-9618-40c1a0e0e021
new 040 0db72f70-63e8-4b37-83c3-5a068c13b395
new 041 3090fb2f-e369-419f-a31b-9e13a8e68ebd
new 042 42ec07ec-671d-4e81-a36a-6f459094577b
new 043 1b46de26-daf5-4747-9c84-e08d8c218242
new 044 2b40b618-fe76-4e11-a7a8-0267da59bcaa
reuse 045 017 "pan right"
new 046 9f2ff670-fcc2-45fe-ab4d-89e6365c45b6
new 047 fe8512dc-ed1e-4afe-a8ec-6d2e2f89ec2e
new 048 2b7aba89-0390-46ec-88b5-da620f482c5b
new 049 844d7054-b885-42e7-bf09-70ece8036020
new 050 b9068a68-2401-468b-b986-5b1ef8fc02ad
new 051 655776d8-79d9-4f6c-8879-3cd5c34360d3
new 052 d8b19811-2ba4-44fe-b92e-bed71e10398c
new 053 a3ff15d2-2d4d-4397-b2e8-d0cc90a24542
new 054 23a64d9b-ff81-4e61-a51f-3d8aee592709
new 055 6046dd2e-01a8-452a-912a-f698b63aee66
new 056 38826a29-0453-4806-8cd4-97785aee8c8a
new 057 343b5099-dd9d-4f5e-b5c0-32df72a6a6ad
new 058 1d1ee81c-3aee-4bff-a1a5-7d497cad7f8a
reuse 059 057 "zoom in"
new 060 0ae545b6-3792-4e87-8fc4-9d5c70d833e9
new 061 e076c5eb-2371-4f81-9605-b5b8942c16a9
new 062 bc7a38a0-e00f-4e68-8fbf-b1193fc33a66
new 063 00ffb15e-cbe3-43c6-89f5-d03b1d22931a
new 064 fffd2bb4-6459-4e13-b4f2-e19cc4945ed1
new 065 249d84fe-ab53-4fc0-bc72-ff48b7a88994
reuse 066 053 "zoom in"
new 067 dbd8e62c-9ae2-4eea-b2b3-a30d83e8596b
new 068 3dca01d6-ac61-4c5e-8824-f01481b77e5b
new 069 dae58a36-b9b8-444e-9bd7-b1cd5c57d302
new 070 3ea9154a-e647-4c44-afd2-c670ab839766
new 071 739ba051-ca57-4a04-b8e9-801bd30a0ddf
new 072 d8ac3496-e165-4b96-b1c8-a0018c34ba3e
new 073 2e5cb306-1773-4095-8bef-89dfce62920a
new 074 8ec640ef-772a-4d25-a3be-de2005dcd2e1
new 075 0398faa6-0031-4f6d-82d3-2260552009a2
new 076 c5383787-f011-40e5-a9e7-9c20c6515d23
new 077 aa9289c6-98c9-4b0e-b57e-7b4501c5d643
reuse 078 067 "zoom in"
new 079 3497cedc-6de6-41a9-b2b3-475a6544d693
new 080 1b9c618a-9a9e-46e0-b853-3a9a2eea1c63
reuse 081 075 "zoom out"
new 082 f511b84f-f7ad-4efd-ac78-6673f2036093
new 083 6538650a-9a09-49c9-81ab-87dc9172d9a9
new 084 872cf172-bf10-44e1-8b4b-83fb0621c9bb
new 085 4cb0392d-fb12-46a8-8231-ab4a2e0e1432
new 086 2595acca-5d2d-4a07-8472-932e7c050628
new 087 0b9c7188-acf2-420c-81a5-bc627190f55c
new 088 8a95c48e-2dae-4ab5-ae64-1f806e93ed59
new 089 187203db-426a-4ea1-a210-a0c37e469edb
reuse 090 083 "zoom in"
new 091 78e84a9a-cb3a-478a-a9a9-cd8aa47cec68
new 092 70c58b26-61fa-49a8-a639-2ac249f2739f
new 093 5ba9303b-2dae-4906-9dd8-9067eb3f8d1b
new 094 2952a93b-537f-42d2-b514-084a2ffe8e32
new 095 a3c4a2eb-8838-41b8-a77b-b52ac2ec35b2
new 096 f971fc87-1beb-45f3-9c90-fe3a7bc7d006
new 097 23dd5ac1-c762-47c2-9ef6-3732e028db14
new 098 66d7dda3-171e-41de-a26e-bd9af3b42caa
new 099 7466a1e3-2eb3-49e4-ba74-f70d9c4c8884
reuse 100 048 "zoom in"
new 101 29f5d793-925c-4789-8950-2135ba246409
new 102 2864d0fb-2e8a-4b0d-bac3-0ef55d5e306c
new 103 1d1a1171-d578-4d3b-9107-ecd2319402df
new 104 03235df5-7d7b-4253-a7cb-a66964234734
reuse 105 104 "pan"
new 106 adbaca9f-9718-4079-bee6-f78cfd0444db
new 107 26354f64-988d-4fc2-8fd3-bd78e5b7ae53
new 108 9d2ead29-415a-4e54-a6d9-24e2d3a25bb8
reuse 109 108 "zoom out"
new 110 b5be19b5-528e-42f7-8e77-a3d38f8e7cd2
new 111 f5444c34-8b4b-43aa-8e58-d68df9f5f8f6
new 112 ef9f95f1-406f-42e2-8d39-0d1e2dba2f26
new 113 c3ab3b6a-a594-4f7c-a83d-ba38cc604bff
new 114 2eea9c98-7894-4e67-8346-1764525e6e76
new 115 5947a1ee-af50-46b0-89c1-4abd10698f17
new 116 3c3faf4a-eb9a-4e3b-8f1d-4bcad1fa6f71
new 117 1884cb65-e587-47dd-918c-ee997f7ff9e5
new 118 a3b2150f-8006-4226-8329-68016d49cb8c
new 119 18eb6aab-2017-446c-9a49-a41b0b60704e
new 120 7541812d-a787-47d2-97d2-be6950edd86d
new 121 c204d9c5-0435-4ca6-b16f-3507c2024500
reuse 122 121 "pan right"
new 123 ddd16e1c-75b9-435b-b184-d4ad4c57bb20
reuse 124 102 "zoom in"
new 125 a1eb09cc-fb61-4ac7-a1a2-a61c1fd9fef9
new 126 13ebd8d2-64f7-4eb8-bd4b-0ebb43106e74
new 127 6c648f04-2a7c-46c0-a46f-d1f0bc9c7d6d
new 128 c62a485a-70cd-451a-b8fa-0fe84911fcf1
new 129 616866a2-111d-4171-9844-85f78c5bf318
new 130 7bb85cf3-f0d8-48b4-b5f0-595e86b7bdc0
new 131 a15ab714-ed2b-46cc-97e3-dc8e578b5adb
new 132 7ae6f3cf-5540-4aff-97d8-f2e60eab7190
new 133 5f30d04f-e822-40be-8050-ca6fdbfd7679
new 134 931340ff-cffd-4095-9f19-28b5db27a1da
new 135 4e9ea331-982f-4aee-a6c0-492d2712df3a
new 136 f3aef222-d147-499a-8eca-5f7ff01a0075
new 137 c1b03dfa-92df-4621-9345-45c3e45e8230
new 138 cf824485-38c3-4b49-bcc2-f786cb8fdd1d
new 139 162a6b76-0b92-4fd6-97e7-d6e6342eeff7
new 140 26cbadcb-c488-4cb8-9708-dafc3b3268bf
new 141 4361c540-6030-4eb3-bb73-5e4bba399217
reuse 142 132 "zoom in"
new 143 2370d80a-381a-42ad-b364-d35df8c1b660
new 144 8c8b7308-487b-427b-b43a-0cd70146c550
new 145 097d193d-8bbe-4d26-bab1-f9de01399283
reuse 146 136 "zoom in"
new 147 339efe0e-1927-4abc-b683-b82b4390c30c
new 148 3a5e9daf-a2a6-4198-b500-fa194e08dcdb
new 149 297e3b89-6bca-4be1-8e8b-5a02d4fba946
new 150 fd55faf0-cbe2-4ac5-a509-22c18882dcc6
new 151 510e6327-1806-41dd-8583-49093776cb40
new 152 fef0e314-d131-4f2f-8a94-8edacd92ac33
new 153 0e3d7d1f-5d32-4fed-b33b-5e986d64a6c1
new 154 545e9424-bc8a-4df1-bf75-260ccf8f80c6
reuse 155 154 "pan right"
new 156 734c3f8a-6850-4ee1-a6d4-2a0bb4b1bcae
new 157 d1077554-b221-4fe6-8697-60bd2aaa41fb
new 158 10d3c12d-cb27-4e4d-85b7-a95920f4724e
new 159 52f3d48a-18a9-4dcf-abfa-7e82c7591caf
new 160 34da97fa-4f3f-44ee-b4f5-340e407b2c9b
new 161 32127ff2-0a84-4c5e-9584-51123d0338ce
new 162 86f35dd4-bc22-4b3f-ac18-48fb227924de
new 163 0a598792-8f74-49c0-a0b0-3121810bc9df
new 164 e0073abd-baf3-451f-b9ef-8a37493871a1
new 165 1901ebc6-baa0-4c1a-9044-9d3005090b40
new 166 e2d83a7d-8e57-4d41-a1b6-95aec55d4718
new 167 4f94a3fa-218d-4ee0-a3a7-52a5c2c170a5
reuse 168 162 "pan"
new 169 1fe172f1-56a1-4f8f-9ad0-fb6e5316b7d4
new 170 bbec07b8-f17a-4733-bb92-1661c539c879
new 171 7a7bab30-58c9-42f8-8c84-b79e2adf38a2
new 172 89002977-11cf-4898-876b-89ac39c78f49
new 173 709e4a99-df9f-45a1-99fd-82d5d62e7649
reuse 174 082 "zoom out"
new 175 471abd05-4288-4015-9746-95257350755e
new 176 eca30da9-0299-4460-ba34-35a3825e24bb
new 177 5da13c9c-cdee-4560-96aa-65b5238b757d
new 178 13b10b76-db32-44ae-bdc0-9244031b7ea9
new 179 f9cd1731-2f4d-42f6-a0b6-fedc5ef6c333
new 180 0cfb411e-6f6e-4209-bf9a-efc7993c9dec
new 181 76120492-9e92-4a0f-a0c6-b2282c295980
new 182 8a81c319-16c7-4add-9d49-f234430fb849
new 183 88185656-3023-4822-96e3-3072c9804f69
new 184 f767131f-8a97-4cfd-a624-a29723b1023d
new 185 dd19cb7e-e624-46a5-8cf7-0d7ca49dc817
new 186 fa716ee5-64f0-4092-9142-41e35f71d49f
reuse 187 186 "zoom in"
new 188 94249604-9b71-479b-8bf7-8f822558e05f
new 189 1fea6f88-249b-4c22-9435-1841df7beaa5
new 190 548855b0-4076-4d6c-967f-6ec6bd3f9abf
new 191 2fabc822-5abf-445c-96db-686eb7d045bf
new 192 d6691ab1-38ec-4f67-8938-32dc54a10719
reuse 193 191 "zoom in"
new 194 7f669554-b230-4e1a-8d7d-aa826da00788
new 195 61f1a05d-aa34-4dd2-8131-c3dd89d5ab29
new 196 947bdba5-5385-4bb3-a5eb-4f50062bdb37
new 197 61428560-9f67-435d-970b-01e41aceaa94
reuse 198 089 "zoom out"
new 199 c6b97884-2453-48fd-bf2e-d6e131985bec
new 200 62d6f131-6491-49c7-bed9-2bbff9f2acd6
new 201 def866ec-2474-4572-81be-e9021de8b038
new 202 6d31157a-7155-487b-96c0-fd3b17446a5f
new 203 07548608-af86-4252-8c9c-1eb1493a7ca0
new 204 a34a0889-2059-4293-8034-deb0bbd64c1a
reuse 205 043 "zoom in"
new 206 2a61d5eb-29c0-4b97-a920-f097003425fc
new 207 47f0cdea-a416-4552-b15a-8a98c3eb46c0
reuse 208 207 "zoom in"
reuse 209 062 "zoom in"
reuse 210 057 "zoom out"
new 211 b3548b64-3178-4f3d-960f-2917165f77ed
new 212 9b46c502-a4fc-42d0-b2c8-914048716a2b
new 213 c3734321-4f83-413e-b286-592c9479c8a6
new 214 044a491a-5291-4ad6-b969-8e8087487930
new 215 f4b9b525-7950-45c5-a964-096b14bf4136
reuse 216 005 "zoom out"
new 217 c21e96c7-de7e-4097-ada3-bc78ff8767ec

# Reference sheets (not part of the timeline, they sort to the end)
ref d3691859-44c4-434c-aaab-9340d09b1918 "REF CHARACTERS"
ref 3739d111-4df9-49e3-b508-89574de7fac2 "REF CAMPFIRE"
ref 2bb94ae0-bade-4265-8e22-3e58705d534c "REF BONE FLUTE"
ref 3406a77a-08d5-4a54-b65e-6781f673344d "REF KNUCKLEBONES"
ref 7b7fabc2-64ee-45b0-8c1d-f53af6e83c51 "REF SENET"
ref 6816318d-da11-4010-ac57-5b147ddd3009 "REF BRAIN"

echo "-------------------------------------------------------------"
echo "Done: 192 new images + 25 copies = 217 files, 001.png to 217.png."
echo "Select all 217 and drag them onto the timeline in one go (2 seconds each)."
echo "The >>> lines above are copies of an earlier slot: add the zoom or pan there."
echo "The last image (217) only needs 1 second."
if [ "$missing" -gt 0 ]; then echo "WARNING: $missing slot(s) missing - see the !!! lines above."; fi
