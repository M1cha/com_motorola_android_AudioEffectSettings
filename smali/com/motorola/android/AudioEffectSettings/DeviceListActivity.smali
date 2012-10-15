.class public Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;
.super Landroid/preference/PreferenceActivity;
.source "DeviceListActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEVICE_CHANGED:I = 0x1

.field private static final HEADSET_KEY:Ljava/lang/String; = "pref_device_wired_stereo_device"

.field private static final SPEAKER_KEY:Ljava/lang/String; = "pref_device_speaker"

.field private static final TAG:Ljava/lang/String; = "DeviceListActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$1;-><init>(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;)V

    iput-object v0, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$2;-><init>(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;)V

    iput-object v0, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->onDeviceChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onDeviceChanged(I)V
    .locals 5
    .parameter "device"

    .prologue
    .line 134
    const-string v2, "DeviceListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, "pref_device_speaker"

    .line 136
    .local v0, connected:Ljava/lang/String;
    const-string v1, "pref_device_wired_stereo_device"

    .line 138
    .local v1, other:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 139
    const-string v0, "pref_device_wired_stereo_device"

    .line 140
    const-string v1, "pref_device_speaker"

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->addPreferencesFromResource(I)V

    .line 105
    const-string v2, "pref_device_wired_stereo_device"

    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 106
    .local v0, headset:Landroid/preference/Preference;
    const-string v2, "pref_device_speaker"

    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 107
    .local v1, speaker:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->isSpeakerStereo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const-string v3, "device_type"

    .line 85
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, key:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    const-string v2, "pref_device_wired_stereo_device"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "device_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return v4

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->isSpeakerStereo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v2, "device_type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 95
    :cond_1
    const-string v2, "device_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 119
    invoke-static {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->getCurrentDeviceTypeInUse(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->onDeviceChanged(I)V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 130
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    return-void
.end method
