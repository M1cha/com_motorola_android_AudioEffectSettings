.class public Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;
.super Ljava/lang/Object;
.source "AudioSettingHAL.java"


# static fields
.field public static final CustomArray:[Ljava/lang/String; = null

.field public static final DEVICE_INVALID:I = -0x1

.field public static final DEVICE_MAX:I = 0x3

.field public static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final HEADSET_PLUG_KEY:Ljava/lang/String; = "headset_plug_key"

.field public static final KeyArray:[[Ljava/lang/String; = null

.field public static final MONO_LINE:I = 0x2

.field public static final OffArray:[I = null

.field public static final STEREO_HEADSET:I = 0x0

.field public static final STEREO_SPEAKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioSettingHAL"

.field private static mSelf:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;


# instance fields
.field private mAudioMgr:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const-string v7, ""

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->OffArray:[I

    .line 75
    new-array v0, v3, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "motoAudioEffectConfigHS"

    aput-object v2, v1, v4

    const-string v2, "motoSurroundConfigHS"

    aput-object v2, v1, v5

    const-string v2, "motoEqualizerConfigHS"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "motoAudioEffectConfigSP"

    aput-object v2, v1, v4

    const-string v2, "motoSurroundConfigSP"

    aput-object v2, v1, v5

    const-string v2, "motoEqualizerConfigSP"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, ""

    aput-object v7, v1, v4

    const-string v2, ""

    aput-object v7, v1, v5

    const-string v2, "motoEqualizerConfigMONO"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->KeyArray:[[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CustomHS"

    aput-object v1, v0, v4

    const-string v1, "CustomSP"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v7, v0, v6

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->CustomArray:[Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mSelf:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    return-void

    .line 69
    nop

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x5t 0x7ft
        0x8t 0x0t 0x5t 0x7ft
        0x9t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mContext:Landroid/content/Context;

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mAudioMgr:Landroid/media/AudioManager;

    .line 205
    :cond_0
    return-void
.end method

.method public static getCurrentDeviceTypeInUse(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v1, -0x1

    .line 119
    :goto_0
    return v1

    .line 110
    :cond_0
    const/4 v0, 0x2

    .line 112
    .local v0, device:I
    invoke-static {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->ifHeadsetPlug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const/4 v0, 0x0

    .line 118
    :cond_1
    :goto_1
    const-string v1, "AudioSettingHAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 119
    goto :goto_0

    .line 114
    :cond_2
    invoke-static {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->isSpeakerStereo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mSelf:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    return-object v0
.end method

.method public static ifHeadsetPlug(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-string v5, "headset_plug_key"

    .line 150
    const-string v0, "AudioSettingHAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get headset plug state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "headset_plug_key"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "headset_plug_key"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ifInitialized()Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mSelf:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;
    .locals 1
    .parameter "context"

    .prologue
    .line 174
    sget-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mSelf:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    invoke-direct {v0, p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mSelf:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    .line 177
    :cond_0
    sget-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mSelf:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    return-object v0
.end method

.method public static isSpeakerStereo(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setEffect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "device"
    .parameter "effect"
    .parameter "surround"
    .parameter "equalizer"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, ""

    const-string v10, "AudioSettingHAL"

    .line 244
    iget-object v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 249
    .local v0, c:Ljava/lang/Class;
    sget-object v6, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->KeyArray:[[Ljava/lang/String;

    aget-object v6, v6, p1

    aget-object v2, v6, v8

    .line 250
    .local v2, effectKey:Ljava/lang/String;
    sget-object v6, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->KeyArray:[[Ljava/lang/String;

    aget-object v6, v6, p1

    aget-object v5, v6, v7

    .line 251
    .local v5, surroundKey:Ljava/lang/String;
    sget-object v6, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->KeyArray:[[Ljava/lang/String;

    aget-object v6, v6, p1

    aget-object v3, v6, v9

    .line 254
    .local v3, equalizerKey:Ljava/lang/String;
    :try_start_0
    const-string v6, "setParameter"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 256
    .local v4, setParam:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 258
    if-eqz p2, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 259
    const-string v6, "AudioSettingHAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set effect profile to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_2
    if-eqz p3, :cond_3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 264
    const-string v6, "AudioSettingHAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set surround to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_3
    if-eqz p4, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 269
    const-string v6, "AudioSettingHAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set equalizer to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object p4, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 273
    .end local v4           #setParam:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 274
    .local v1, e:Ljava/lang/SecurityException;
    const-string v6, "AudioSettingHAL"

    const-string v6, "Security Exception"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 275
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 276
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "AudioSettingHAL"

    const-string v6, "Illegal argument Exception"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 277
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 278
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v6, "AudioSettingHAL"

    const-string v6, "No setParameter method"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 280
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v6, "AudioSettingHAL"

    const-string v6, "Illegal Access to setParam"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 282
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "AudioSettingHAL"

    const-string v6, "Illegal invocation target setParam"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setHeadsetPlugState(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "ifPlug"

    .prologue
    .line 137
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, sharedPre:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "headset_plug_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    const-string v1, "AudioSettingHAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set headset plug state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public static validDevice(I)Z
    .locals 1
    .parameter "deviceType"

    .prologue
    .line 162
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized updateHALAudioSettings(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "deviceType"
    .parameter "ifEffectEnable"
    .parameter "effect"
    .parameter "surround"
    .parameter "equalizer"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    const-string v1, "AudioSettingHAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set the device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {p1}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->validDevice(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mAudioMgr:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->OffArray:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, Off:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 233
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->setEffect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    .end local v0           #Off:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 234
    .restart local v0       #Off:Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    :try_start_2
    sget-object v1, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->CustomArray:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    :cond_3
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->setEffect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_4
    if-eqz p3, :cond_0

    .line 237
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->setEffect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
