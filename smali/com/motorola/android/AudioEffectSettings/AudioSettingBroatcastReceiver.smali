.class public Lcom/motorola/android/AudioEffectSettings/AudioSettingBroatcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioSettingBroatcastReceiver.java"


# static fields
.field private static final deviceArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingBroatcastReceiver;->deviceArray:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, action:Ljava/lang/String;
    invoke-static {p1}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->init(Landroid/content/Context;)Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    move-result-object v0

    .line 50
    .local v0, hal:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 52
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 54
    .local v10, sharedPre:Landroid/content/SharedPreferences;
    const-string v11, "AudioSettingBroatcastReceiver"

    const-string v12, "AudioSettingBroadcastReceiver"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x0

    .local v1, deviceType:I
    :goto_0
    sget-object v11, Lcom/motorola/android/AudioEffectSettings/AudioSettingBroatcastReceiver;->deviceArray:[I

    array-length v11, v11

    if-ge v1, v11, :cond_3

    .line 57
    sget-object v11, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->keyArray:[[Ljava/lang/String;

    aget-object v7, v11, v1

    .line 58
    .local v7, array:[Ljava/lang/String;
    sget-object v11, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resDefaultArray:[[I

    aget-object v8, v11, v1

    .line 59
    .local v8, defaultArray:[I
    const/4 v11, 0x0

    aget-object v9, v7, v11

    .line 61
    .local v9, key:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 62
    .local v2, ifEnabled:Z
    const/4 v3, 0x0

    .line 63
    .local v3, effect:Ljava/lang/String;
    const/4 v4, 0x0

    .line 64
    .local v4, surround:Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, equalizer:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v9, v7, v11

    .line 67
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_0
    const/4 v11, 0x2

    aget-object v9, v7, v11

    .line 73
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    :cond_1
    const/4 v11, 0x3

    aget-object v9, v7, v11

    .line 79
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x2

    aget v12, v8, v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    :cond_2
    const-string v11, "AudioSettingBroatcastReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receiver set the device "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "enabled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "effect:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "surround:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "equalizer:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->updateHALAudioSettings(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 93
    .end local v1           #deviceType:I
    .end local v2           #ifEnabled:Z
    .end local v3           #effect:Ljava/lang/String;
    .end local v4           #surround:Ljava/lang/String;
    .end local v5           #equalizer:Ljava/lang/String;
    .end local v7           #array:[Ljava/lang/String;
    .end local v8           #defaultArray:[I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #sharedPre:Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method
