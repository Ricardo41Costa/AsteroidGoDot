GDPC                                                                            %   D   res://.import/Ship_idle.png-2221c24b284593bec8e511022ecdb826.stex   0Y      �      g�$��/{���T�&ugP   res://.import/Ship_move_sprite_sheet.png-5c2c7d22a256cd5f061a06b00d1b97ce.stex  �^      �
      ��OQS�oI��H�0h@   res://.import/bullet.png-6b56c7898a9b46a3c3db58585f0f8e0d.stex  @l      �       x۝���L�<h��=�@   res://.import/comet_1.png-0cee8cb3bdcca8db1c6119d853d83a28.stex �o      `      �=��"���e� �@   res://.import/comet_2.png-5cae19dfbdeb05785c13e0efe914f81b.stex �t      -      � 5��Xg���Y���@   res://.import/comet_3.png-2e28d453d37da2fe5c29e0856c06ed1d.stex �y      #      �3��Φ��C�6�5@   res://.import/comet_4.png-7c3facd8b44dc654ba4ef136321654f8.stex �~      f      +���������$<�V<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexp�      �      T�[~.��e��y��d�    res://Scenes/Comet_Type_1.tscn  �
      r      0��`�#�Y�ɔ�    res://Scenes/Comet_Type_2.tscn  P      l      ����A�j5Ke^=    res://Scenes/Comet_Type_3.tscn  �             Y�;4s���ԙ!I�    res://Scenes/Comet_Type_4.tscn  �      �      �΃��Q:B�<���8{   res://Scenes/Main.tscn  �      �      ��-o�"&��ݡe�֖�   res://Scenes/SpaceShip.tscn 0            	t�m����'On�r�   res://Scenes/Ui.tscnP.      �      �|Mr��Z1[�Z�@a�   res://Scenes/bullet.tscn03      ]      ĨU�݇�x?:lr���   res://Scripts/Comet.gd.remap �      (       �2���dj���Í��mQ   res://Scripts/Comet.gdc �6      1	      ��I~�Y��r�ނ�I   res://Scripts/Main.gd.remap 0�      '       *�e�R��_�������   res://Scripts/Main.gdc  �?      j      ;8�g�eȰ|oU����    res://Scripts/SpaceShip.gd.remap`�      ,       :_�\���Х�A\�F   res://Scripts/SpaceShip.gdc @C      �      ;��'�iֺ>��n>   res://Scripts/Ui.gd.remap   ��      %       z?��h�����w�.   res://Scripts/Ui.gdc�S      &      �?i��n2����BĊ�    res://Scripts/bullet.gd.remap   ��      )       �鼪��=({��=�u�   res://Scripts/bullet.gdc W      	      ?����6�:����x���$   res://Sprites/Ship_idle.png.import  �[      �      ����y���n��0   res://Sprites/Ship_move_sprite_sheet.png.import `i      �      n��6�P9�Ҭ��    res://Sprites/bullet.png.import �l      �      j�W������i�h��    res://Sprites/comet_1.png.import�q      �      ���r�x��t�b(Tv�o    res://Sprites/comet_2.png.import�v      �      ���˷�G�빂��
�    res://Sprites/comet_3.png.import�{      �      `���b�&^��    res://Sprites/comet_4.png.import �      �      ڜy�t��Ɗ��ؑ�   res://default_env.tres  ��      �       um�`�N��<*ỳ�8   res://icon.png  �      �      $Uʥ��ֶ�����n�   res://icon.png.import   P�      �      "�Պ����$��㹌   res://project.binary��      �      P��'���$Q){�([gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/comet_1.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Comet.gd" type="Script" id=2]
[ext_resource path="res://Scenes/Comet_Type_2.tscn" type="PackedScene" id=3]

[node name="Comet" type="Area2D"]
position = Vector2( 0.125, 0.0625 )
scale = Vector2( 1.5, 1.5 )
collision_mask = 6
script = ExtResource( 2 )
nextComet = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 23, -23.5, 23, -21.6, 30, -10.6, 30, 1.6, 18.1, 19, 15.2, 19, -9, 21.2, -9, 19, -20, 11, -20, 8.3, -22.8, 0, -19.9, 0, -16, -4.7, -20.9, -18, -17.9, -18, -11.9, -25, -6.8, -25, 3.4, -22.4, 9, -25.2, 9, -27.7 )
[connection signal="body_entered" from="." to="." method="_on_Comet_body_entered"]
              [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/comet_2.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Comet.gd" type="Script" id=2]
[ext_resource path="res://Scenes/Comet_Type_3.tscn" type="PackedScene" id=3]

[node name="Comet" type="Area2D"]
script = ExtResource( 2 )
speed = 125
rotationSpeed = 55.0
nextSpawnNumber = 3
nextComet = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 14, -24.8, 14, -22.9, 21.4, -16.6, 20.4, -14, 19.1, -14, 17, -10.5, 17, 6.1, 15.8, 16, 14.1, 16, 11.1, 21, 1, 21, 1, 19.1, -6, 15.2, -6, 11.9, -20, -1.1, -20, -3.5, -23, -8.4, -23, -14.9, -10.7, -25, -8.1, -25, -6, -25.5, -6, -27.3 )
[connection signal="body_entered" from="." to="." method="_on_Comet_body_entered"]
    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/comet_3.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Comet.gd" type="Script" id=2]

[node name="Comet" type="Area2D"]
scale = Vector2( 0.6, 0.6 )
script = ExtResource( 2 )
speed = 150
rotationSpeed = 65.0
nextSpawnNumber = 0

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 6, -18.8, 13.8, -11, 23, -12.3, 23, -10.1, 26, -8.1, 26, 7, 23.8, 7, 12.8, 17, 7.6, 17, -0.9, 13.6, -7, 17.3, -9, 16.2, -9, 15, -14, 11, -14, 5.6, -10.6, -3.7, -15, -14, -12, -14, -8, -19, -3.5, -19, -3, -19.2, -3, -21, 6, -21 )
[connection signal="body_entered" from="." to="." method="_on_Comet_body_entered"]
       [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/comet_4.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Comet.gd" type="Script" id=2]

[node name="Comet" type="Area2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 13, -21.3, 13, -17.9, 12.2, -8.9, 17, -1.6, 17, 1.7, 1, 23, -1.5, 23, -8, 26.2, -8, 22.9, -20, 12.9, -20, 5, -22.2, -14, -20.4, -14, -17.4, -23, -13.9, -23, -8.8, -22.3, -3, -25.2, -3, -28 )
[connection signal="body_entered" from="." to="." method="_on_Comet_body_entered"]
[gd_scene load_steps=5 format=2]

[ext_resource path="res://Scenes/SpaceShip.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/Main.gd" type="Script" id=2]
[ext_resource path="res://Scenes/Comet_Type_1.tscn" type="PackedScene" id=3]
[ext_resource path="res://Scenes/Ui.tscn" type="PackedScene" id=4]

[node name="Main" type="Node"]
script = ExtResource( 2 )
cometScene = ExtResource( 3 )

[node name="SpaceShip" parent="." instance=ExtResource( 1 )]
position = Vector2( -0.841244, 0.0337563 )
parent_path = NodePath("..")

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="UI" parent="CanvasLayer" instance=ExtResource( 4 )]
             [gd_scene load_steps=19 format=2]

[ext_resource path="res://Sprites/Ship_move_sprite_sheet.png" type="Texture" id=1]
[ext_resource path="res://Scripts/SpaceShip.gd" type="Script" id=2]
[ext_resource path="res://Scenes/Bullet.tscn" type="PackedScene" id=3]

[sub_resource type="Animation" id=1]
resource_name = "Idle"
length = 0.1
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ 0 ]
}

[sub_resource type="Animation" id=2]
resource_name = "SpeedUp"
length = 1.7
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.2, 0.4, 0.7, 1 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 8, 2, 7, 1, 0 ]
}

[sub_resource type="Animation" id=3]
resource_name = "SpeedStable"
length = 1.5
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.4, 0.8 ),
"transitions": PoolRealArray( 1, 1, 1 ),
"update": 1,
"values": [ 4, 4, 9 ]
}

[sub_resource type="Animation" id=4]
resource_name = "SpeedUp"
length = 1.7
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.2, 0.4, 0.6, 0.8 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 7, 2, 8 ]
}

[sub_resource type="AnimationNodeAnimation" id=5]
animation = "Idle"

[sub_resource type="AnimationNodeAnimation" id=6]
animation = "SpeedDown"

[sub_resource type="AnimationNodeAnimation" id=7]
animation = "SpeedStable"

[sub_resource type="AnimationNodeAnimation" id=8]
animation = "SpeedUp"

[sub_resource type="AnimationNodeStateMachineTransition" id=9]
switch_mode = 2

[sub_resource type="AnimationNodeStateMachineTransition" id=10]
switch_mode = 2

[sub_resource type="AnimationNodeStateMachineTransition" id=11]
switch_mode = 2

[sub_resource type="AnimationNodeStateMachineTransition" id=12]

[sub_resource type="AnimationNodeStateMachineTransition" id=13]
switch_mode = 2

[sub_resource type="AnimationNodeStateMachine" id=14]
states/Idle/node = SubResource( 5 )
states/Idle/position = Vector2( 317.5, 261.438 )
states/SpeedDown/node = SubResource( 6 )
states/SpeedDown/position = Vector2( 507, 399.062 )
states/SpeedStable/node = SubResource( 7 )
states/SpeedStable/position = Vector2( 683.5, 262.875 )
states/SpeedUp/node = SubResource( 8 )
states/SpeedUp/position = Vector2( 505, 131.25 )
transitions = [ "Idle", "SpeedUp", SubResource( 9 ), "SpeedUp", "SpeedStable", SubResource( 10 ), "SpeedDown", "Idle", SubResource( 11 ), "SpeedStable", "SpeedDown", SubResource( 12 ), "SpeedDown", "SpeedUp", SubResource( 13 ) ]
graph_offset = Vector2( 0, 166.339 )

[sub_resource type="AnimationNodeStateMachinePlayback" id=15]

[node name="SpaceShip" type="KinematicBody2D"]
position = Vector2( 0.125, 0 )
scale = Vector2( 0.8, 0.7 )
collision_layer = 2
script = ExtResource( 2 )
bulletScene = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
vframes = 2
hframes = 6

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/Idle = SubResource( 1 )
anims/SpeedDown = SubResource( 2 )
anims/SpeedStable = SubResource( 3 )
anims/SpeedUp = SubResource( 4 )

[node name="AnimationTree" type="AnimationTree" parent="."]
tree_root = SubResource( 14 )
anim_player = NodePath("../AnimationPlayer")
active = true
parameters/playback = SubResource( 15 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
position = Vector2( 0.6875, -4.875 )
scale = Vector2( 1.93359, 1.57813 )
polygon = PoolVector2Array( -0.368497, -14.131, 0.665846, -11.9131, 0.989079, -7.63591, 1.95878, -5.18046, 2.4113, -2.32898, 2.47595, 2.58191, 3.70423, 4.32449, 5.77292, 4.56211, 6.74261, 2.74033, 7.32443, 2.74033, 7.64766, 5.90865, 11.979, 7.4928, 13.5951, 12.1661, 12.6254, 12.7205, 9.58706, 10.5819, 8.22948, 10.978, 7.90625, 12.8789, 5.57898, 12.7997, 5.51433, 11.1364, 2.54059, 11.1364, 2.47595, 13.0374, 1.82948, 14.4631, -2.04931, 14.4631, -2.95436, 13.4334, -3.21294, 11.5324, -6.18668, 11.5324, -6.12203, 13.3542, -9.03112, 13.3542, -9.03112, 10.978, -11.423, 11.0572, -13.1685, 13.1958, -14.3321, 12.0077, -13.1039, 7.57201, -8.5786, 5.75023, -7.99678, 2.50271, -7.35032, 2.58191, -6.83314, 5.11657, -3.40688, 3.21558, -3.21294, -2.80422, -1.85537, -7.08145, -1.85537, -11.7547 )

[node name="LeftCannonPosition" type="Position2D" parent="."]
position = Vector2( -14, -3 )

[node name="RightCannonPosition" type="Position2D" parent="."]
position = Vector2( 14, -3 )
 [gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/Ship_idle.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Ui.gd" type="Script" id=2]

[node name="Ui" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 0.125
margin_right = 0.125
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ExtraLiveTexture1" type="TextureRect" parent="."]
margin_left = 0.25
margin_top = 16.0
margin_right = 64.25
margin_bottom = 80.0
rect_scale = Vector2( 0.6, 0.5 )
texture = ExtResource( 1 )

[node name="ExtraLiveTexture2" type="TextureRect" parent="."]
margin_left = 36.125
margin_top = 15.875
margin_right = 100.125
margin_bottom = 79.875
rect_scale = Vector2( 0.6, 0.5 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ExtraLiveTexture3" type="TextureRect" parent="."]
margin_left = 72.25
margin_top = 16.0
margin_right = 136.25
margin_bottom = 80.0
rect_scale = Vector2( 0.6, 0.5 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="LevelLabel" type="Label" parent="."]
margin_left = 5.0
margin_right = 105.0
margin_bottom = 20.0
text = "Level 1"
valign = 1
          [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/bullet.png" type="Texture" id=1]
[ext_resource path="res://Scripts/bullet.gd" type="Script" id=2]

[sub_resource type="CapsuleShape2D" id=1]
radius = 1.23133
height = 0.904995

[node name="Bullet" type="RigidBody2D"]
collision_layer = 4
gravity_scale = 0.0
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -0.309359 )
shape = SubResource( 1 )

[node name="Visibility" type="VisibilityNotifier2D" parent="."]
position = Vector2( -0.0552441, -0.254116 )
scale = Vector2( 0.163625, 0.19898 )
[connection signal="screen_exited" from="Visibility" to="." method="_on_Visibility_screen_exited"]
   GDSC   %      R   �     ���ׄ�   ����Ҷ��   ������������Ҷ��   ��������������Ķ   ����������Ӷ   ��������¶��   ���������Ӷ�   ���������������   ���������������   ������Ѷ   ��������Ӷ��   �����϶�   ����������������¶��   ���Ӷ���   ���������������Ŷ���   ����׶��   ��������Ӷ��   ������������������¶   ���������������Ŷ���   �������ض���   ζ��   ϶��   ��������������ζ   ��������������ض   ���Ӷ���   ���������Ӷ�   ���������������������¶�   ����¶��   �������Ӷ���   ��������Ҷ��   ��������������ض   ���������������������Ҷ�   ���϶���   �������Ӷ���   ���Ҷ���   �����������Ӷ���   ���¶���   d        4B         
   /root/Main                                  Bullet           	   SpaceShip                      	                                  	   #   
   &      )      ,      -      .      4      5      :      ;      C      D      H      I      S      ]      ^      e      f      k      o      p      w       x   !   ~   "      #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6     7   	  8     9     :     ;     <     =     >      ?   &  @   '  A   0  B   7  C   8  D   >  E   ?  F   F  G   G  H   L  I   Z  J   ^  K   b  L   h  M   i  N   w  O   x  P   ~  Q   �  R   3YY8;�  Y8;�  �  Y8;�  �  Y8P�  Q;�  YY;�  Y;�  Y;�  Y;�	  Y;�
  YYY0�  PQV�  �  �
  W�  �  �  �  �  PQT�  �  �  �	  �  �  �  �  �(  P�  R�  Q�  �  �(  P�  R�  QYY0�  P�  QV�  �  �  P�  Q�  �  PQYY0�  P�  QV�  �  �  �  �  �  �  �  T�  �  �  �  �  �  T�  �  �  �  YYY0�  PQV�  �  ;�  �  �  ;�  �  �  �  &�  T�  	�  V�  �  �  P�  T�  R�  T�  Q�  �  &�  T�  P�  T�  �  QV�  �  �  P�  T�  R�  Q�  �  &�  T�  	�  V�  �  �  P�  T�  R�  T�  Q�  �  &�  T�  P�  T�  �  QV�  �  �  P�  R�  T�  QYY0�  PQV�  �  PQYY0�  PQV�  �  �  PQ�  �  )�  �  V�  �  ;�  �  T�  PQ�  �
  T�  P�  Q�  �  �  T�  �  YY0�  P�   QV�  �  &�	  V�  &�   T�!  T�"  P�  Q�  V�  �	  �	  �  �  PQ�  �   T�  PQ�  �  '�   T�!  T�"  P�
  Q�  V�  �  &�   T�#  V�  �   T�$  PQY`               GDSC            ~      ���Ӷ���   ����������Ӷ   ���������Ӷ�   ����ڶ��   ����������Ŷ   ���������Ӷ�   �����϶�   �����������¶���   ���Ӷ���   ���������¶�   �����������Ŷ���   ζ��   �����������ض���   ϶��   �����������ض���   ����¶��   �������Ӷ���   ��������Ҷ��   ��������������ض                      h                     
                                 	      
         '      +      ,      2      3      8      9      ?      @      X      b      c      l      q      r      x      y      z      {      |      3YY8P�  Q;�  Y;�  Y;�  Y;�  YYY0�  PQV�  �%  PQ�  �  �  PQT�  �  �	  PQYY0�	  PQV�  �  ;�
  �  �  )�  �
  V�  �  ;�  �  P�(  P�  R�  T�  QR�(  P�  R�  T�  QQ�  ;�  �(  P�  R�  Q�  �  ;�  �  T�  PQ�  �  P�  Q�  �  �  T�  �  YYYYY`      GDSC   B      �   �     ������������τ�   ����Ҷ��   ����������Ӷ   ����������Ӷ   ����������޶   ��������������Ӷ   �����������Ӷ���   ���������Ŷ�   �������������¶�   �������������������Ӷ���   �������������Ӷ�$   ��������������������������������ݶ��   ���������Ӷ�   ������Ӷ   �����϶�   ������������Ӷ��   ��¶   ����¶��   ����������������¶��   ���Ӷ���   �������ض���   ζ��   ϶��   ���������������Ŷ���   ����׶��   �����������������Ķ�   ���������������Ķ���   ���������������Ķ���   �������������������Ķ���   ����������Ӷ   �嶶   �������������ն�   ����¶��   ���������������������Ҷ�   ���������¶�   �������Ӷ���   ��������������ض   �����������������ض�   �������ض���   �������Ӷ���   ��������Ҷ��   ����������¶   ������������������ض   �������϶���   ����������������Ҷ��   ���������������Ӷ���   �����ڶ�   ������Ҷ   ���������������Ŷ���   ���������������Ӷ���   ��������������ζ   ��������������ض   �����������������Ӷ�   ������Ӷ   �������������������Ķ���   ����Ķ��   ����   �����������¶���   ������������Ӷ��   ������¶   ���¶���   �����������������������Ķ���   ���Ӷ���   ���������Ӷ�   ��������������ݶ   ���ƶ���   �                      /root/Main/CanvasLayer/UI         parameters/playback       Idle               	   ui_accept      �        ui_up         SpeedStable             ui_left       ui_right   
      d               �?      timeout       _timer_callback       hit                    	                                 	   #   
   (      -      2      5      8      9      :      @      E      O      V      ^      o      s      t      u      |      }      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4     5     6     7     8     9     :      ;   '  <   (  =   ;  >   <  ?   E  @   K  A   L  B   U  C   [  D   ^  E   h  F   o  G   p  H   u  I   v  J   w  K   }  L   ~  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `     a     b     c   	  d     e     f     g     h     i   !  j   $  k   (  l   )  m   /  n   0  o   8  p   ?  q   F  r   Q  s   V  t   \  u   ]  v   c  w   d  x   i  y   j  z   p  {   t  |   x  }   |  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YY8;�  Y8P�  Q;�  Y8P�  Q;�  YY;�  Y;�  Y;�  �  Y;�  �  Y;�	  �  Y;�
  V�  Y;�  Y;�  YYY0�  PQV�  �  W�  �  �
  W�  T�  P�  Q�  �
  T�  P�  Q�  �  �  PQT�  �  �  �  P�  T�  �  R�  T�  �  Q�  �  �  YYY0�  P�  QV�  �  �  P�  Q�  �  PQ�  �  PQ�  �  PQYY0�  PQV�  �  ;�  �  T�  PQ�  �  &�   T�!  P�  Q�  �  V�  �  �  �  �	  �  �  ;�"  �  T�#  PQ�  �"  T�$  W�%  T�$  �  �"  T�&  �&  �  �'  P�  QT�(  P�"  Q�  �  ;�)  �  T�#  PQ�  �)  T�$  W�*  T�$  �  �)  T�&  �&  �  �'  P�  QT�(  P�)  QYYY0�  P�  QV�  �  ;�+  �  PQ�  �  &�   T�,  P�
  QV�  �  &�
  T�-  PQ�  V�  �
  T�.  P�  Q�  �  �+  �  P�  R�  QT�/  P�&  Q�  �  �  �  &�   T�,  P�  QV�  �0  �  �  �  �  &�   T�,  P�  QV�  �0  �  �  �  (V�  &�
  T�-  PQ�  V�  �
  T�.  P�  Q�  �  �1  P�+  QYYY0�  PQV�  �  ;�2  �  �  ;�3  �  �  �  &�  T�  	�2  V�  �  �  P�  T�  R�  T�  Q�  �  &�  T�  P�  T�  �2  QV�  �  �  P�  T�  R�3  Q�  �  &�  T�  	�2  V�  �  �  P�  T�  R�  T�  Q�  �  &�  T�  P�  T�  �2  QV�  �  �  P�3  R�  T�  QYY0�  PQV�  �  &�  V�  �  ;�  �  T�  PQ�  �  &�  �	  V�  �  �	  �  �  �  �  &�4  PQV�  �5  �  �  (V�  �5  �  �  (V�  �5  �  YY0�6  PQV�  �  �  �7  T�8  PQ�  �  T�9  P�  Q�  �  T�:  P�  Q�  �  T�;  P�  RR�  Q�  �(  P�  Q�  �  T�  PQYY0�<  PQV�  �  �?  P�  Q�  �  &�  �  V�  �  �  �  �  �  �  �6  PQ�  �  T�=  P�  Q�  (V�  �>  PQYY0�>  PQV�  �?  PQYY0�@  PQV�  �  �  �  �  T�A  PQY`            GDSC            ]      ������ڶ   ��������������϶   �����϶�   ���������������Ӈ���   ���������������Ӈ���   ���������������ӄ���   ���������������ӄ���   ���������������Ӆ���   ���������������Ӆ���   ��������������������¶��   ����ڶ��   ���������ڶ�   ���������ڶ�   ���¶���   �����������������������Ķ���   �����������Ŷ���   ���������������Ӷ���   ���������Ӷ�      Level                                                       	      
   !      "      ,      -      4      5      ;      <      D      E      L      M      U      [      3YY;�  YYY0�  PQV�  �  ;�  W�  �  ;�  W�  �  ;�  W�  �  �  �  L�  R�  R�  MYY0�	  P�
  QV�  �  ;�  W�  �  �  �  T�  �
  YY0�  P�  QV�  �  ;�  �  L�  M�  �  T�  PQY`          GDSC   
         E      ��������τ�   ����Ҷ��   �����϶�   �������϶���   ������Ҷ   ��������������ض   ��������������������Ӷ��   ���Ӷ���   ���������Ӷ�    ���������������������������Ҷ���   �                                  	      
                           	      
   '      (      -      .      4      8      9      ?      C      3YY8;�  YYY0�  PQV�  �  ;�  �  �  �  �  P�  R�  QT�  P�  Q�  �  �  �  P�  QYY0�  PQV�  �  PQYY0�	  PQV�  �  PQY`       GDST@   @           j  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���   IDATx��Mn�0���ʲRw����	��q��hOPq��'�Y�q=R�t�ĒM���I�3I�<�IY�8���c;%RE�Q��d������]��}�,���	�!0Yh� C�`G� ̀�hC��� [8҄��� � ��5���n����,��j��O�p����dT��~�@܀�P�	�s@1̖�����H(���� Ш� Ш� Ф2@�O��4�Q̦s�M�D�^)��,8uEʰ�ȀF���8��}�o�L���$?�	��;��Ϫc���~z��=�`�.�z�Kosq�a�h�{l��A�0[����m�#"�~ߜ�,����7[h['�D�+vl����Π1؇>L�}��63�&�.�8�҇�!�����R���)��0�h�d�z�%4$>E&�͐Ee2qj�P�}2�_�:��ݩ՗.�=��I�u�����C@�>1=_�
��,1}��뙦�&u��!�u8�_(ǴX\���ܿ��(��(��(��\�B�&�ao    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_idle.png-2221c24b284593bec8e511022ecdb826.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Ship_idle.png"
dest_files=[ "res://.import/Ship_idle.png-2221c24b284593bec8e511022ecdb826.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST�  �           �
  PNG �PNG

   IHDR  �   �   ��   sRGB ���  
qIDATx��M��F�_�f��0��	L��@��1>A6�0>D�l�79�1����&'�b��Y��]�Z]%��������ާ�֓�Ւ           @|���W���~)��S��  P
  @�l
�^�[� �K�R����/�_j���u��?z����!�g_ɳ/�J�P�����+ c��+������ÿ���'��ӓo%S(
���I���x�P���������i�  �B  �
  @��8���XE'�㏿�����  tJ�jk�~�����v����\��|?{x����eR���?�%(24�7��*��o�Z��_��0'�C'���Z���s����>[M����H{���o5!��K&� �
  @�P   :�  �)  �N�   t
  �Sb�a��E�xK��?���[b��  tJ�0��|/o.ߋ��Ұ�
�e-L�������8p�WT�������L��/�S�a��W�V��Q;��?����~? ���՝���e�^��/�?k����˰�?�:�ǿF��pR�B��-�*��w7���?���C^��3��}�����j�۫;��޵�;���K���u	UE�΀������6G Gҵ2�����qu��kb���+��_* �710���ＶUp�fe�v�������2oj��?���q�7���Ӭ���+ E�_�e�|N�������Jj�엂��p-W�����
��埬 �U.��|�J���7�?�6��,+��/G�ɗ	ډ\~��B�Z%�A^߳������W��,�;����t���h&\�����i��1�?��'����Cl�ex�/yV�ؘ����/��>��g����Y��7�.����|�w��x�y�w�1�W�ۏi���^o�������ܼ���n7�����s�=����\~�?��GN2��b�;���?0^tN��x��yb�x����������ۿĆv��i��=������/��x�ñC:��~ 1����(HA�K�1��q��'��藃�`5�9&s�h3���/%Fb���<9�ds�n;��QAJ��/%���W�G�j��h���X���<�0v�М1g? � �	��'^h������������;�� >�B�x#|Ou[K<�~�|t�j�KVI��-k( ��T���2���f)X�r����쯋Wӆ�e���_Êq�й�SA�\N.��p���-��H�$�%�c�!�w� >�]��$r�$�UM;n!��_]��1e�� �3m���g��R�  X2���U�lⴴQR�^�=����X�Z� �I�T                        (� u\ϼ��?��  t
  �SJ^�ux!oED䃼.�K	��_D��Կ
���A5���N�?�G/�ߕ5z��<��d
E������b`��=v��������B�#�OO�ɧ'�J�P��ǿ_�(V ��c'����л-p( @�P   :�  �)%λ=9X�ɹ���}�.���#  �N�]m��_��^ ���N���ձ-���ã���[(�2������"C@��7��*��o�Z���_��\C��	����V�ݿ6r����>[M����H{���o5!�M�W	g t
  �S(   �B  �
  @�P   :�  �)�
���"w�%���v�5G   �� o.�˛��"�<�߷�fY��������8pj|EC�?��3�ߌդ( ������Q'?j����UD����o��D�X-���N~��Y��?�^�%���ׁ�k#� �T�jo�&��#��ͦ/��j�ƿ	\Wڡ��}�����j�۫;��޷�;��X���K�*Ru�������asp��2�������Ihg�_�6��_ٿi�
��ML���;��^�Mg�����9��_��d�!�͍�[�94��ǘf���_#s�h��������c���U�wA�KA�U��?�����
���F�0W�u=��1�$r�?�&�o�-�}92L�L�N��C���*�����m<M�Χ���d����2�.0��y�p�6�2N�wX�q@��?<��;�nXZq�ܘ�Z\���[�֙r��f���e����o��n�o:��Xr�����v��햖�xu�����r�E�z{�۹AD���NDDn��;�u��M��/:�|�?ǻy���'��1^t�/��K��F�t�@6��'���w��i�=S���5�9�kb��3Č�.��W;�����9l�>�!���1����_ԿE�.�����Rx�x�و�afh�u����ͻ�p.G{�K9���/%���������&h��r�d+ ��s��V"���\��D����G ����'^hL�|i��[��`�#��c5D�x�LZ��6���/<6��+��Gë ���ֲa������rR˺RT0D���Sb��W�\C�7�_h��|�c|�sǋ���wOmL�O� |�_��w����۽�\C����1&�w I��J-��"  KJo�m���`X ��@q               #�?��V��    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_move_sprite_sheet.png-5c2c7d22a256cd5f061a06b00d1b97ce.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Ship_move_sprite_sheet.png"
dest_files=[ "res://.import/Ship_move_sprite_sheet.png-5c2c7d22a256cd5f061a06b00d1b97ce.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST                 PNG �PNG

   IHDR         ��a   sRGB ���   5IDAT8�c`h��̹��A�&�?�l&J]0��������<#�A��  0vQ�m    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bullet.png-6b56c7898a9b46a3c3db58585f0f8e0d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/bullet.png"
dest_files=[ "res://.import/bullet.png-6b56c7898a9b46a3c3db58585f0f8e0d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @           D  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�����0E�N
K�'�ԓҙs�x�
��Kh�;z�`,� ���6@��\S�0� ����u��x���@�! ��еX�91D�X�}�ޫ��� �;�c"���l߲��֪�h"���ִDr���E�F���-�ރ_K�	�x�laO�6#�2�j�^�o(!�&�])K��$8%�!�$8"Ȗ?� �D�d�<�7G��%N/ T48)�[5�#�S"Ly<_U���
0�$iU��Orh[�v�i)�V�鷂z`b�@4e�[�s��~�����8��*��<��qX�^J�r��%��qf@4m���]�g��D��-3D9`�֗�_54>^�����l����Զ�T�e/|����ߐ���%������ �F�����f U{ᙠ���վ�Gb%Z��|0�YFC�^-�Hm�zJ�h�cr�e�<@��$	�)Q��>:c"��Y�3!
[Km������lMXAAx�Gq�p==hu    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/comet_1.png-0cee8cb3bdcca8db1c6119d853d83a28.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/comet_1.png"
dest_files=[ "res://.import/comet_1.png-0cee8cb3bdcca8db1c6119d853d83a28.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @             PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��M�0�������q�y��7�uj�I�!�o��4��!J�$�c�}�m����ч�����z��?�����o�kFo�C"�-P��J����Dmn�)R�&� �B 3�� �
� �^�)D�]GE_0�׮�)�D �Y�&If{7�ߨ�p03�giM]f��7r�-��^��x"~�&_/��xQM����r��eQ\�����U��k]������[1�a����D�!�`y�.ͅ#�D�?�9@%BD�$IP\tD��U �lJ�
��| ;����m�D!����Хo�3�PO�
)��ђ�{�9`��
�5��n7X�r>�)�,��C�
nOd,f<r,	�	^'Ba���?s��0A��� �0$Juh�� b�	��SY�ʐ�9�����	ay��&��xQ��'�&?SR{Fi�I�$I�$I2:r��:2,y    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/comet_2.png-5cae19dfbdeb05785c13e0efe914f81b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/comet_2.png"
dest_files=[ "res://.import/comet_2.png-5cae19dfbdeb05785c13e0efe914f81b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @             PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��Qn!D�U�;�<��yr�܌�t�˂�I�I�*%<;6�D�B!���2q��x?dm�H""������\���/B��>
~�W�����W�����"|�
~@4(��o�8
o{�Z~�x:�=�|l��&ee����׻�+d�R����e,�_й�R�R1�+֔Ѹ�r��@�����N+Bx
D��Yj��ɧ��F=��Y
\��X�y]�H�04Nk}Uf�L�n�n'7t=��g*�5���B �������"�����A$��0��@����n�։��A��+s�\�BO�4�qu@Te7:�<��G8<WxK,KO��A�7��-��.��ZѸh
Q����L1�l�-���PfO��@����6U��ׯHн��`�.���^�Odz��O�o�p%�B!�BN�Z����7x    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/comet_3.png-2e28d453d37da2fe5c29e0856c06ed1d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/comet_3.png"
dest_files=[ "res://.import/comet_3.png-2e28d453d37da2fe5c29e0856c06ed1d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @           J  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���   IDATx��In�0E��z��|��7s7����@�sH�d(��EjNkEQE���d��i�vy�9���E���ڬ�ȊW���\Z;w|!���J7�v��2�z�"h*<u�
c��D�P���z�	�4�� �C�CK�o�N���m�E`���u�8��Ӽ},A���T��iK�p22���K���66B�����OFY2�=��H7V$��+��B	݀hBP��7C*zǹ"��I�FB�͐]@D�����5R� '����F��UՒd%��9�ۍh�
�d\Al�Xx~0�M�9�u�J��#`�@��?�	W�K��>��[m㻞�y&x��T��r�%�)��qΡ����U��,d���XEL�fkI
�b�|�!�84g LLW�R���Ep�'T�U�쭐���}&���y���Σ��E�v�X��-�I���X���m��FI28�i�lٜ�уп�EQEq�@���?��    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/comet_4.png-7c3facd8b44dc654ba4ef136321654f8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/comet_4.png"
dest_files=[ "res://.import/comet_4.png-7c3facd8b44dc654ba4ef136321654f8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�   �           �  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  vIDATx��y|T����̒�I&�� ��-� (.� X�X��Z\z[m��u����Zۏ��^�Wo[��V�
��RD��Ⱦ� !		IȾ͖Y��I&3��̚Lp���9y���<Ϝ���<�+^�C�f�4
,��X�� J�X����$"I��(��$I�I���!~|�6���*�T��1Z=��b��W�`(%�U(5�#9V	qa��(!@B�#�Y-�ǁ��	@4a�8�J�T�U(��$��
�  �	��F�P�+�굀���}�6aC�����q��>$@=b=�RP#�����S� .����F�,F�P.
	�1����\�L��L���24v�$	�Ռ�jFr8<�.���b��!���	@/(薜��� �,@��D�*yL�e���e
%J���&,=E C.�Y'��� ����HH1�A<�/WƠ��G��1�<F�L��b��f1�����E�X$ �D�ɩ%�s� �v��B�!&6!*�1� ��&�Pi����ЙN#PgrdKw��+cP����XG��C���8'	��t&G6���ӈϺ[��(��ďpW���&A]��&N#>�AR��ڣ�:.�ڿ�a����$��$��}�EQ�\�"ʅ�\�Be�cA�$�����L���E�V�QpH�<yQ.�e+8�i��5�d2�\�x�V�t�4�B�H������Dw�Y(j�_�x�V@���U�
9�
X0���E>Qɺm�hn���)�ܲ�
�M�ġ�<^���X���+���K�H�'b���W6�4.���Mw
������p8�|�Q־��֎n���������b�%sE�W��f�ЉJ�����'9]{.�{)��cNT1J��|>7-��)r|��鋽<��~��{na�Ջ|*[V]��~���_��l񫝑f�*���tn^~)+�\D�fp�tm�����(>ۉC��?7;}[6���?�u��>����������j�ՆbDA`v^"OJa\J���F�� ���nj�-3�x+@�� ��<u��(���}Um�;���������gڙ7!�L�Oo^�S��?>�y���]�?|��#5 :��_wU��d�$NJa��T
g�8��[V\�-+����
�~�=�Z��A,m��߹�P�����{װx��\gۍ���/l+���f�[���u�;M\73��y���s�N�a���s3x쮛{-�綜�M�X&���V_���ёz�2�$��#���S�NK�o�p�����y�� ��/��| �$�uE������)k�a�KC�o՛)�Ԓ��A���bo�u��f
�9�f��V6����.Q֨c��zJ�:Q)D�5����J��=���]�o��Y�{������9�3�OR|ֿW�;���$��,�d���[�p|6�\�$I��o���V��N��|���9�:�~�HD� C���Ke��ݕ�\V�� ܷ�z��~+�q��S hhn�[o��p���������u�k�O�E�t��3[�T�w��oΰ� QX<w� ���$���3���W�{�D"��3�?�xU�!�gZ|U���쫲fjچ6�½������7�V\»ߜ����4t���1�m�w:�s��h�rT
ىj�����{_#��
���j�� �u�X���`���}u��H$�?]nc�� � #I�� � ӭ�0Ҹ���"��V �Y�`m��Ľ���<�6#b��f���Ig���'O�Tg~Qܶ�u�0������V�3�8t�ҧ��O"1>��F����Ea{�1J�>t�/��q~�־�����A�Ūcx��Uܸt���V�y��{_s3S���c�����|��4�}�d���7�䢙�w<�k��l�Z/X��x��;�r��'�d���Ũb����f�w�����O���]��=V^���w��	I�F�����21;/eo�ʴ�y,�t�W���?èV)�������ocR^րk��NgBv:��9����3��5+=~�����4w�)�p��d"s�M��%i��QY{�%�`��~FrB����-���c���/�'�n1�ى&2U��m��W,������fV\�����s�!���cێ5�UY3��'����B!�@IE���V���\�B~{�]�����t~����B�e'x�9]{�I����h���S��-�#ҹ�0�G���F��ŭ�kdbn�G�҆.^�QAe���+'q��<�����|���A��; $�o�y�'���?B�C��t+/}R��,|r���NS��]��W��i��9Q�p?"��v#�+[Y����w��ߟ�צ7�_�W�/+=�Z��tP�Gn�3�{��i-��\KG�}	�' '#��~�ohTμªf=On,�g_�j`�1g ��L�Ka��t�ĆbZ�c���n��'�(�В��i���|��,�~|��&݀:��t�SH�U"E._P�{��L��BX@^z�.�g;?mz3�PLw��-W�C�hm'_�j&]�����f��u�:��/K����Ӯ7�M��]ъ�q~_��!����%Sӝ�
�����x�~� \�aQ�۾{�+��fw�Ǩ��mLo������g�u��)$���vv���7��[`��)��bYQ&�(������±�j��yDP~n�+lཽ5��΢GE����ָ����w������� 2����~+J�Ә+;�ͺ}�Aw*���WKY�X�������1|��j��K�:�9L������@>LQ|�!I����^;i��<��ƥA]3`HN�����\�o}]E]{d{�.�ڍ��u������HN|1��@��q���u������QB��Cu��9���rjU��z�������#	�3+���?^_Z��%�!�P�Ṥ ��E����������_r?�l
I��S�&I���eS\�ۿ>Dck�S�A}�s���x����O�F�`yh�W�ackϿ�!��� c��}W�բ�)�d�(�纙Y,���f�$�߿�>cp�@�F�����������
\Ύ(�#+Q�=W���o���ǃ��(��w7SU��J!��ME�씸1�(�/���Z�����W���k��"V���^�Wx�����p\(.���qL�q��z���6p=�@YXxYuol��:��	.��8*���.��:~c�vʪC7�Ҩ��c?��R4��21�π(Lώ� C��-y)�ڍT4�h�Q��=�}$��Ӳ�)��R��%7Y��6#�M:*�t�l��G"
 �u�{���;B���*��!a�Xin�t��B^���VL�0�cK
3�\5���n����Rδ�n�ń�X_1��4����-WOw���I���r6H_����b�yf�B.cBN�Kk��y�v����&?-�Wo�Ϛ���N(Xs�x^�m� �{S�����sӂ�!ˍaK�^\��-��K&�b��������c��G�(d"w\�Ϫ���JV���K�Q�)��f����~��"J���.�ĵE��6�DL�U�6�c���Ǜ?fݺ�444��M�6��y����'r���s��J�KV���\>�u|���|�MN��r�����[~��߽ޣ�=Wp��#b2�"&9􁥓�u۾�j���c�䥗^�>���S<��G��_� ���#~NC�icX9+����I���N}d��������Q�444��K/��c��j���������D
� *��������[8p`�z��_�W_�`fn��k��M�/��k's���y�����0|E�>���� �ڵ���^��������<�-�O��!rD(���8� ����_��Ou׾���9)R��[d̏/���J!�x�E_v���_Z�S���?�����X&���p
�-����|ܝ����8�e�d���]� ����F_555tv��f��ᠤ��9_�5�D���y~�+*|˥�.��x��6��ce����<ZD�T�x��C�x��:ᠯ��6}���F���
P�"��)�Yɓ';�W�@BJ_S��7�(��ڹ�=�� ��FniRs��!5շùs琞���f�i�3�,6;iii̝;ǧ:���̙�_�`�Q!!�� ����<���8��#��S��<��GxwO͈8�l�w�8��G�(j�����}���~�����E
 ��H=��V���E<��'��<Y5''�?��<YYY���fÁ������\7YYY�����|*:66�'~���o=s�l'��ԏTW�%b��^�~�Wo���Y���̙�֭�(/+������\�O�Ί�+P�T�6^�V:�)iI�m��r�|���x�Ϳ�u�VN�<I]]���L�2��+W�����6Yyq��!�<�D�4u�����S\y����q�탖?X�������W��,����w�� ];��ɬ�i5�oZ}��{*[y�2:��Y�+P"J :�V��t�k�epü
3��ܯhұ����%�m�V��ͥ�i��K���o><�u3�X9;{�[�$*�tl:\ώ���� }�(mr=���8
3��n�SѤڀz��
��U.�U4�xmG���Kα��N����8*�tT6E�Po("Vܩl҇�a��-���!r��|}Gh��Pޤ�|-�1& \�J�c��F�
�-'� �rBn��>��r:�Ztft=V�z0Y��u�XԴ��%�G9�{��O�E&��R!���A�����B�R���!!�)�!W �W4p�FI�7�$�>}�M:��{��h��k�E*q1r���MF�ʵX�w�h1� Q\��3Ԭ��l4�4w-������CIX�W��LP����O�E&L��.�`F�o�������������f=�|"��s_�oqͪf=vI��Հ���go�P۾V8Y���z�|LL�CaBJ,
�Ȣ�)\<��f���(/h�LL��_.��??+���=�=�ʾ�6�6g�8�G���k���'�������-.f������̵��a۱s�|���"�
����q7�d��Z!�d�?>'�?f�o��~��&�p������B�abк?C�����r��hz.Ԫ�~Og�t�ƫ~_C��{$��v��KP�eܾ��Z�]��NT�7��=C��q�'/^��^޿�t1_���2��]'���w�y$�y��w��JP����ym2q�������5��Aw!q���`���0Z�(=8F&�u�69IjN�y�B&0��^��(��yߛ/d&����z�r����Z.�3�Yy��*o��.�c��R�nZ�7h^��!�H�����v,���x��;L�ɛK��NT�C�v�HF6�r(=V���;}y��|��&�
p�D%w��\E|N^�0���E?`g1od��1�0;/i�r�A���w�+��T�nu�� ����W(���&�6@I�L=����Xf����~^���6*�t�6�	&Y$�D]���&���x�s��7;/�e{�z��������`�Xٲ� 7/������X�oI�}T����ƒ�ǧĢ�ٵj�̵�Z�F���O�URިc�ц��-��$0=;��n犜-:3��6E]��5B9ݬ�!IXm5m�1�n���ߗ��XC�	�D��m��i٥���T�K�h�J0���1�aWF�����x�����\������_S#0�2�X�����C˦�}J�BB�������Ͼ9J�9��i_	�T���ƭ�	j~{��Q%�\��UEd&8���:/��a���D:�����F���	���ƙ�7���E��z&�'�������_�Lض���=���`�gjtf���	�*o��U>#�B�37�b��p���ma�'�C�Έl�Α�*�+g9��3�U��Kd_U=�w�XH�(������_y�#���E��q (.���`b�i �iU|gV6�����3}�*� 7����U3�v�5��_?d�֝aisT �DE�]:.�W�lG.� ?����i5�!'�E9	<���\[��a?���cç�}��3j
 Pz�,�e��'Q�l')V��Yd&��nя� ������߮*�XԪ���_�}�{��ھ�ӗ��x�&����������'����aI]'���cWy���|�\�)�,�������on�����j�7_1t4{��������?��k.�֎�bc�f>=�H�0n�HeZv<ˊ2Y25��9t�o����M��w�X�"J��;}kV.��E�
 �fN�ws����T�Df"I~Z,s����x�c�hw8�u��o�'GJ��Jx�H�#)>�K.b�U����8o9���Ɇ.N�wQ٤��hq%���q$j�dĹFCE/U�5����lٹ?�;��
�������E\s�l��|�jӛi7X�l��i�Ҭ�A�����qd�q�k�ݬ�^Q��Zҵ*5

2�$�*}^�Ko����l�rX\��0f�����(d�ԉ̞�Ozr`�&ᦩ��ce�=UŁ�r��7_i��
�MVZ��Ld��|�s2HI�2!����pP]�D{����&�OUQ|�:�=|G�B�Gvz
)�Z&��"35���XA`J~�G��X59��]u��茞�c��� ��n����m��SOCsd%w����zfP(ihn������3�ݕ1�(!yXH�.�ed񖭄�Ah�,ta̾E�@�
-� I��=i�D޲$�Y��#��n�vy�Mx�V�2�=��Fel0@�E`��!�pرYz�raa���p�ze�MD̂ lt/l5���I����� a� b{�Vz��'%Ir͂8v,Ʊ邍2�����/I&���k���
�E�t�d����"��(Cc1�Y�{���7/ ƹ�cx�nh�1b6tE?cI�0���x�*�+��
g�<F��j5� +r�aA�����b�nkC��E���QF�ل�ǀ䵦�$�b��V�5
�y�����aH���^��F�rE2E2��K�D	=v�$	�Ռ�j x 	�l�x��~ �����+4 {�&���b� �<.�p`5������%$8f6Y�+���
�X$K�����+|,&@-��W$�J{�"�	�W�E@���4e���,$�<d��&K���$$�$�Y����C���[	�	_ջ���b�7�V@. [����$"I�l�ed�$	A8	�C�#:�O$l6p�P�T��(��ݲ�n4#�� (c���C�&�̭    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Scripts/Comet.gdc"
        [remap]

path="res://Scripts/Main.gdc"
         [remap]

path="res://Scripts/SpaceShip.gdc"
    [remap]

path="res://Scripts/Ui.gdc"
           [remap]

path="res://Scripts/bullet.gdc"
       �PNG

   IHDR   �   �   �>a�   sRGB ���  �IDATx��y|T����̒�$�L��F��������bEo�R���^�z�j�����~�WkUz�z�ꯥ�U�r��,.��(;� !�B�/3�d�s�2��d2�I&8�����y�3�s�y��Y^�a�[z3]2m�y�b�j�h[!ظ$I�� �]#L�$	A8�M�Z���2�}�(��h�r*vo���o�R
r��Z-�
e��H��Bt��&�HHz����	�L^_Z����������@%�)�)�2A�ֆ�  D��V�P��d�u����z)�F�U�!Ym�"Ԋ��vg�I�����ՂL��ܳ��o.0�[��@\$�Hq�� ��� �� w=�/X-f�$�f#��f�(#A��&�6c;X�٠8 f�jbb#24��� �ΕQD��B��}�	�S�� H�Ԣ�,�{��=G> t�����6Eh�6���+#P�$�!�P��L�r^�d� ���m� �z d �3/!->�� |ǹ�BIDdLx�7�RH�,f��I���(�G��'����)V�x���"�bǾ�a������8����}R>�(�	*�#��_E��1���0A@� �����H�8A���W*@Z�RA~�_D��R���#�Q�+b�V�R@��E��oG��	�R�(����O�_)"r�sA�B9�36x���M�`���r�:��xp[�&M%�E��0'�c+	B�R�K!��}(�E���JI��h/��/V��V@��ǩ/G����0��3�YP���Slر����Q]79A��+�b��\������r����d����0c�Z��DT\�ʆ��Ҹb����#��~�l6�~}�uon���gD�N����w�f�esE�W��b�ȩ
����ˣ���k�����-.�N TJ��r�,���)>����~�����:���ng���T������x;�<J��4�vƚ	+ �ӓ�u��Zz	ё�-�u���l��l6I���: ���w����|j++5��/��y��益�9YZ.�M`RB��z�>~q���x��-^ˌ7��:@J����_���7[9P�΁�v��u�������`��x�2?�uO�����=��p�њ��vp�����">JɼIq,�M`qN*��lt���W^��+����r�y���F��YRά_;�P��K�x���kY2�e���}��u/�(����z1��u�\?+���Tv}}�.]��eg���=�"�ט��4�zW�2��T���eY+k���Dj��X���Tzr�I	|��1?�:x��]�?�����{۷�I_���ڮr^�]I�9f�4d�6���T�q����6&���Y��o%o�]hT���p����V��s:�o����B$+>A���BIU=uM�#����. !��s�?z�>��a��z���#{����I�ʲ��?9��e�'�s��v�A�$���fDm���٭�y�Îs������p1��~A*Z��h��$A���7�ۉ��$=9�Ɩvz�}�w�JG��*ڨl��רS_C}a-��[���������UK��%�{���$�����ݞs_��!	�O��w�ǋQ��^��˞Rߧe{J[�mZY
�:�C(2a� ��b����+�&��e��l��h��� @F��H��BF�V��#������P�� ��B�(> ��V��=>.�8���B���t;��cF�Kb\� a�}`t��ƹ������ 8�ڍVK��:���x3&:@vf
ٙ�t��9z�ҧ:
�x�Վ��� c�s_�c5�^GNU�Tw��\�1�Tן���9X]t�_5B�็��ʅ3]��>T̺7�����^�:���\��˖��o���E������=� �?���x�z��##%��ﺉ���r9���I�\�&F��k��4[��?���y����떠�Pr���eЈ�7)�??� �fMu�������e��uM@�5�+o�����,-��N*�s�X~�|�,��{p�Q�Rr�w��3�AnV�ǵ&�'3%=�O�>����1����\�������#y)v�C�Ld��nX���nuM,�d&�~�����(~Y��/�?AI�ȼyB���^>9�L�V���D�Yy�B���Q���ʫ���w�d�td�AulǉF���0r< ٙ�(r���_�p���^į��g���#g����~^r4\���tנ�ʺ&r'J��;ΰ��7�P��$���H�����9��.�J�yuW9�m�^������k���G�w��������G���݁�6^���a��5���s4v����A����.��Wĩ�n��j�u��������h�O�bc���F���r��y��S˱�N�Ɍ�`ɼ�/��������������7"U��ª=Om.�j��n�e�	�#��T�C`��v��"��G����]���Oѐ�����,V�;x��><My�Σ��lgQvqQJd�ȕ�l�^�_�� ���KO���t��]o����鿰�j�I����3-$k"8Z���w��h��os�`�������9z#��r�}�mXl�u[l��Y:-�n�P*���Ň�"�a"� �q�����o:A}�o+`z��ݥ������?����5�.mEo�-���d����兩��@Jb�~'J�G�~�=��3Sn[ ����:3:ʛu����q|�m�&;�#�ۈ� �d"����P*��\iSԍ�Sa���@���J��g��{.�GU��y�r�����;�`����'l��;�`:�'M���_n^6�k�- ��ܽf��x��U�w����b�����_V9��^���X����- jU�#�����G�v�86�����-��P��O�spsw�7B�$�y �[ �������T.�KH���ey�,+\Fv��� �k�d�GǏ,/ .2�`*��E*ydy��x�G8�����>Ͽ���x�Z��+
��f�<����sx������4��J z����k�:B��$8�1���g��8��$I�y�]z�F��Z	<|���;�8��&�a�8Ҵj�&�q�q���@@f������s �2~z�4����P����i�<U��x�����v .b�Xy���v�w�Ȉ廋&��a��.�Č����om�x�C������V�������;.���0��Rȸ�)���7���:p�n�
��?v���,#R�\&��3 
3�c�K�05ECVB$�}�7�(o�Q��3�},����c�Oѐ��!3>���}�5�h�q���o�(�����������+�]� �lF����.G�?d�G����䧸�$?E�5��&��V=�o/��m|/�$F����d'����h��{_˛u�~{	gGi+��l�,��R�eL�HqH�H�ea�޹�c���N��;����~��^:�W�X�1���hx��ܲ0k�r�A�B�ܓ+��u���hi�×��^OYiˠ�B&r��٬��[��@�z^w]���I�-e�e����E�r?Z��u��OB&�*Q�2��í�a�F�M��=������ ��9��?Gɑ��U��+s�G��7��L�ǹ��tn��6n�����]�Ǳ�ΐ�t
��Ї�M%*bP�f3O<�3^z�e��8Sr��~����]S~t���I�V�Ng��t�4#3�>���1�����c?y�e�y饗y��a6:�FE�yh�TB�� �B���x�s����C�Yoûسg/ �2�>������,�����uSy������i1j�2� �ݻ���NA{��!��m�˹���!3E	�M�v$f���c���|����uX��E��d�<c~pe�� �2�W�P�a�Zy��u>�ٸ�=���:�EA �Ǿ�� ��+..��e�[otuuQ[k��-H�m��t/�
o�1�Fmm-]]��,��l�p9竰����h�opy�o����㢂�0��H�XQ����ǋ���V�iS�f�5 w��"�^'�1Ц����X��BB *�2rN-��<u��|���QP0�YG�T�l���<^�� 4t���&5w�\}�1�7o.��ɘ,�1Y�i��d����ļys}�����ܹ�e{�Bą>$@��7�ͣ?yt�zj���~� o];&�!�M����J�c?}�zx��'�=Jt�������	 �r��N��/�t1O��I����fdd���'--�Ҧ6:�\0�t�,�M=������'#��RtTTO��I/�z���.�k��K�,����ܱ����lٵ̝;���wPVZJ[[���̘1���V�R��5ZxaGɘ���$�v����-�������۷m������ד���ԂV�ZIB U��`�ŝg����R���Ͽ�?ȏ�+p�$&&r�]wz-���u���x]��EX����N���_W���x�ܲ�5���`��+���'�t�'ۗ���  t��yf�I����M�3�O�x��/oֱ������m�V�����I�FJ���/�?����X5'�Ä-I��:�m`WI�s��C�	� �J�?Z^J4�)*���7�F�@��Y9�1*ǀ�7�xu���;���Y܄�����My����И�E�
�3������z�}��8���3��5�(�@	2&� �@�D&d��aƇ� |�	�7��� �S�����>�:#�~3��1���w�a2ۨ���j��g���";1
�L`r|J�Hf\$j���X��dM�A�� �ܼ���J�>܄M���U4�h�����>��U�#��07���#Y���x2� Q��Scլ��t<�5j�Y������IP�益H�U���LN�B&�w�.�`f�o���HӪy��BG{�Rբ�[O��r��=$׬j�c�$j�z1Ym4w��ܭs�j��* ��[�_���hD�$D���,�I��\�`4����%Y�|���h��,��2��;����6T�c�بi��f�3(B\=}�??��J_���������]�Gs-�{�q��U޷�/. �fYg�O&��2���g����U����9	ܹ$��Z#A���(��(�ο��GO�p����<��P���x�tWsi�Z1�khTr� �����Trw.�F%G�?�tTq���^#{��O^L����sJ���|����g�߽�?o�������8��s�d��)�V+���k�z��B�̀��`���g��w:�LL�緵ɈSsf�ͫ2����M��#����|!U��Sw����ӕu\6w ����-kQ}�U��lu�nݲ0�k\��&9�>����v��\��Gc�k�48o.�O"]�v��8���l�t(�f밂덁8D����&�p�Tw�b�">7K;Li�T��=vsG&
.k	s�⼖kE�xCנ ,�Kd�(��V�2��}"-�;���j0��}�����9r!x��rV�Sެ����h�EFh��7Sެ�`U;�|:�����u��~#'�k��1r�0��l�}�[W\�wdr�޷ ��Z��js����	Q(�Kt�Z!sl���T:b�㣔��ӱ�x��u|e[Q#���H���Ǟ��Ug��NQ��瘡T��If�Dm{`����g�e�!L���E���q�^nY~9� �$/������x���-;|��>��_��d���ƼIq�O��fc��=������3�6���u���/i^L�2~�|0>򓯎S�42e�W�6*����ykj��_�4eX�E)yju!����l���׿���6"�=z^Z��q�`J<��yV�M0r�߮�ł)��/��}�z��0���*ꚰZm,�i�N�U333��e�!��3TP)d<{�lf;Mg�k�66}�/������+��h2�h�=�>%F��,-���7_��Ďm��߮�Ea�����o}��[>x[c.  E����X2w: Iߞ���b����#}&*� 7����3Iw�5���a�9. p����nW�/��#Y�����Dj�zi�ĉcEaF,�|g���(ǿ{���q`_�Ό�  �T�����¼�h5�v⢔���F�VEu�~�;�����vM�KR���f~��Mv�/
j�� �X������}����p5?\s�Ǧ���]|T��޲֋f+���U�,���b�{
�76}Ļ�v�j�7_��lq9 9A�#߿�k/�̵�g���L�<G�0f�Pezz�SY:-�a9t擯����-�vt�Y�BJ �7#����rłB����^#�z8��M��N�[C3�$;)��Yqv�AF�Q�� �6{���m_p����U�KH
� q1Ѭ\z	��YLvf���-�n��TC7�z:�L����"/9m����h��h(索�sl�� �v���p�� 83k�dn�z1�^:��h�ܱ��F:zMT4���3Ӣ�G�����p��o��m�ݴXQn^�y��5*��
�R4�G)}��٭���El��`PL��0a������g��L�&9�?G�`���ŉ�j����Pq5-�Wc&� ���ǜ�fO�&;#���)�d���f:�uT74St���3գ��w��(�B�''��Ր;)���8�b����L�r1Qj2R\ݻ�ϵ��su;SUHt��r���ʺFڻ�4��Vp�Hp�q�
$�-�4��S\V3�]�0����$�a��0c���JH:�V�B��[O<�VhIr�(H���I&�p[A�ZDI\➭�o�U��J�P*"�k���Q��x���f���c��"h�Y����놙�XL��l�� 	IW�t|���UA��\�l��."$I�lp���I�T������g~J�$�*��f��71M�a<1���>��d0���U�"V��dr�Axù��d�d�l�a��d�c1�)����(��+vo��<y)�jz~�f;��+#PF�x���H�����c�%8QRް�v�������k��f�a�$�0d11��c1�3kO,F�}��_��l6��ת���{;2�+H̙�#�����D;״�MXL$��$� ӱZ�HV+c�>�}�=�}i���j��a��y��z��۱Z��"Ԋ�0	N�����.�x�;jO�vJ�٦��I�1	�0�lOa�	��k%���7{����Y���j5?l6�J�����L$$�$�͆�V��a����z0�j���f�dڬ=�BŤ�6ѶB�qH"�4#<=g$IBN�`�D�m�G��u$�b,Z���ݞO�3�m�߷P5�:    IEND�B`�      ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Asteroid   application/run/main_scene          res://Scenes/Main.tscn     application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   layer_names/2d_render/layer_1         Comet      layer_names/2d_physics/layer_1         Comet      layer_names/2d_render/layer_2      	   SpaceShip      layer_names/2d_physics/layer_2      	   SpaceShip      layer_names/2d_render/layer_3         Bullet     layer_names/2d_physics/layer_3         Bullet  (   logging/file_logging/enable_file_logging         )   rendering/environment/default_clear_color      s� >���=���=  �?)   rendering/environment/default_environment          res://default_env.tres        