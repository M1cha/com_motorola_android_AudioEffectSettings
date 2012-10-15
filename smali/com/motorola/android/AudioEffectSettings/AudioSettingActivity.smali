.class public Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "AudioSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;


# static fields
.field static final TAG:Ljava/lang/String;

.field public static final keyArray:[[Ljava/lang/String;

.field private static final resArray:[I

.field public static final resDefaultArray:[[I

.field private static final resEffectArray:[[I

.field private static final resEqualizerArray:[[I

.field private static final resSurroundArray:[[I


# instance fields
.field private mDeviceType:I

.field private mEffect:Ljava/lang/String;

.field private mEqualizer:Ljava/lang/String;

.field private mHAL:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

.field private mIfEffectEnable:Z

.field private mPreEffect:Landroid/preference/Preference;

.field private mPreEffectEnable:Landroid/preference/Preference;

.field private mPreEqualizer:Landroid/preference/Preference;

.field private mPreSurround:Landroid/preference/Preference;

.field private mSurround:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 42
    const-class v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->TAG:Ljava/lang/String;

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resArray:[I

    .line 61
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEffectArray:[[I

    .line 69
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resSurroundArray:[[I

    .line 77
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEqualizerArray:[[I

    .line 91
    new-array v0, v3, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "pref_headset_effect_enable"

    aput-object v2, v1, v4

    const-string v2, "pref_headset_effect"

    aput-object v2, v1, v5

    const-string v2, "pref_headset_surround"

    aput-object v2, v1, v6

    const-string v2, "pref_headset_equalizer"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "pref_speaker_effect_enable"

    aput-object v2, v1, v4

    const-string v2, "pref_speaker_effect"

    aput-object v2, v1, v5

    const-string v2, "pref_speaker_surround"

    aput-object v2, v1, v6

    const-string v2, "pref_speaker_equalizer"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "pref_mono_effect_enable"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, "pref_mono_equalizer"

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->keyArray:[[Ljava/lang/String;

    .line 101
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resDefaultArray:[[I

    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x4t 0x7ft
        0x3t 0x0t 0x4t 0x7ft
        0x2t 0x0t 0x4t 0x7ft
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x6t 0x7ft
        0x9t 0x0t 0x6t 0x7ft
        0x0t 0x0t 0x6t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xat 0x0t 0x6t 0x7ft
        0xbt 0x0t 0x6t 0x7ft
        0x1t 0x0t 0x6t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 69
    :array_4
    .array-data 0x4
        0xct 0x0t 0x6t 0x7ft
        0xdt 0x0t 0x6t 0x7ft
        0x2t 0x0t 0x6t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0xet 0x0t 0x6t 0x7ft
        0xft 0x0t 0x6t 0x7ft
        0x3t 0x0t 0x6t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 77
    :array_7
    .array-data 0x4
        0x10t 0x0t 0x6t 0x7ft
        0x11t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x12t 0x0t 0x6t 0x7ft
        0x13t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x14t 0x0t 0x6t 0x7ft
        0x15t 0x0t 0x6t 0x7ft
        0x6t 0x0t 0x6t 0x7ft
    .end array-data

    .line 101
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x5t 0x7ft
        0x2t 0x0t 0x5t 0x7ft
        0x4t 0x0t 0x5t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x1t 0x0t 0x5t 0x7ft
        0x3t 0x0t 0x5t 0x7ft
        0x5t 0x0t 0x5t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x6t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffectEnable:Landroid/preference/Preference;

    .line 47
    iput-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    .line 48
    iput-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    .line 49
    iput-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    .line 52
    const-string v0, ""

    iput-object v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mSurround:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEqualizer:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mHAL:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    return-void
.end method

.method private getEntryFromValue(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "entryRes"
    .parameter "valueRes"
    .parameter "value"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, valueArray:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, entryArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 115
    aget-object v3, v2, v1

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    aget-object v3, v0, v1

    .line 119
    :goto_1
    return-object v3

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method private setEffect(Ljava/lang/String;)V
    .locals 4
    .parameter "newValue"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    .line 231
    iget-boolean v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mSurround:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEqualizer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateHAL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private setEffectEnable(Z)V
    .locals 4
    .parameter "ifEnable"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    .line 226
    iget-boolean v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mSurround:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEqualizer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateHAL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private setEqualizer(Ljava/lang/String;)V
    .locals 3
    .parameter "newValue"

    .prologue
    const-string v2, ""

    .line 240
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEqualizer:Ljava/lang/String;

    .line 241
    iget-boolean v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    const-string v1, ""

    const-string v1, ""

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEqualizer:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateHAL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private setSurround(Ljava/lang/String;)V
    .locals 4
    .parameter "newValue"

    .prologue
    const-string v3, ""

    .line 235
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mSurround:Ljava/lang/String;

    .line 236
    iget-boolean v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    const-string v1, ""

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mSurround:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, v0, v3, v1, v3}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateHAL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private updateEffectEnableUI()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffectEnable:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 246
    iget-boolean v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->CustomArray:[Ljava/lang/String;

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 250
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 257
    .end local v0           #enabled:Z
    :cond_1
    return-void

    .line 246
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private updateEffectUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 260
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    sget-object v2, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEffectArray:[[I

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v2, v2, v3

    aget v2, v2, v5

    sget-object v3, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEffectArray:[[I

    iget v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getEntryFromValue(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    iget-boolean v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    sget-object v2, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->CustomArray:[Ljava/lang/String;

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 267
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    .end local v0           #enabled:Z
    :cond_1
    return-void

    :cond_2
    move v0, v5

    .line 265
    goto :goto_0
.end method

.method private updateEqualizerUI()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    sget-object v1, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEqualizerArray:[[I

    iget v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEqualizerArray:[[I

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEqualizer:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getEntryFromValue(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    return-void
.end method

.method private updateHAL(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ifEffectEnabled"
    .parameter "effect"
    .parameter "surround"
    .parameter "equalizer"

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 217
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p2, v1

    .line 218
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object p3, v1

    .line 219
    :cond_3
    if-eqz p4, :cond_4

    const-string v0, ""

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object p4, v1

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mHAL:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    iget v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->updateHALAudioSettings(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private updateSurroundUI()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    sget-object v1, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resSurroundArray:[[I

    iget v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resSurroundArray:[[I

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mSurround:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getEntryFromValue(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateEffectEnableUI()V

    .line 296
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateEffectUI()V

    .line 297
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateSurroundUI()V

    .line 298
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateEqualizerUI()V

    .line 299
    return-void
.end method


# virtual methods
.method public onClose(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateEffectUI()V

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateSurroundUI()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateEqualizerUI()V

    goto :goto_0

    .line 145
    :cond_2
    sget-object v0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect preference:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const-string v9, ""

    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->init(Landroid/content/Context;)Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mHAL:Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;

    .line 156
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 157
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "device_type"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, device_type:I
    if-ltz v0, :cond_0

    if-lt v0, v11, :cond_1

    :cond_0
    move v0, v10

    .line 162
    :cond_1
    iput v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    .line 164
    sget-object v4, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resArray:[I

    iget v5, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->addPreferencesFromResource(I)V

    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 168
    .local v3, sharedPre:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->keyArray:[[Ljava/lang/String;

    iget v5, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v4, v4, v5

    aget-object v2, v4, v7

    .line 169
    .local v2, key:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffectEnable:Landroid/preference/Preference;

    .line 171
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mIfEffectEnable:Z

    .line 172
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffectEnable:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    :cond_2
    sget-object v4, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->keyArray:[[Ljava/lang/String;

    iget v5, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v4, v4, v5

    aget-object v2, v4, v8

    .line 176
    const-string v4, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 177
    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    .line 178
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resDefaultArray:[[I

    iget v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v5, v5, v6

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    .line 180
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    check-cast v4, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-virtual {v4, p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->addDialogClosedListener(Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;)V

    .line 182
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    check-cast v4, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEffectArray:[[I

    iget v7, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v6, v6, v7

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->setSummaryText([Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    sget-object v4, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->keyArray:[[Ljava/lang/String;

    iget v5, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v4, v4, v5

    aget-object v2, v4, v10

    .line 190
    const-string v4, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 191
    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    .line 192
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resDefaultArray:[[I

    iget v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v5, v5, v6

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mSurround:Ljava/lang/String;

    .line 194
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    check-cast v4, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-virtual {v4, p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->addDialogClosedListener(Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;)V

    .line 196
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    check-cast v4, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resSurroundArray:[[I

    iget v7, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v6, v6, v7

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->setSummaryText([Ljava/lang/CharSequence;)V

    .line 201
    :cond_3
    sget-object v4, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->keyArray:[[Ljava/lang/String;

    iget v5, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v4, v4, v5

    aget-object v2, v4, v11

    .line 202
    const-string v4, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 203
    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    .line 204
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resDefaultArray:[[I

    iget v6, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEqualizer:Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    check-cast v4, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-virtual {v4, p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->addDialogClosedListener(Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;)V

    .line 208
    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    check-cast v4, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->resEqualizerArray:[[I

    iget v7, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mDeviceType:I

    aget-object v6, v6, v7

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->setSummaryText([Ljava/lang/CharSequence;)V

    .line 213
    :cond_4
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateUI()V

    .line 214
    return-void

    .line 186
    :cond_5
    const-string v4, ""

    iput-object v9, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mEffect:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffect:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 125
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->setEffect(Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 126
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreSurround:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 127
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->setSurround(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .restart local p2
    :cond_2
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEqualizer:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 129
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->setEqualizer(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->mPreEffectEnable:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 131
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->setEffectEnable(Z)V

    .line 132
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioSettingActivity;->updateEffectEnableUI()V

    goto :goto_0
.end method
