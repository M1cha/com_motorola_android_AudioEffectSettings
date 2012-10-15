.class public Lcom/motorola/android/AudioEffectSettings/AudioListPreference;
.super Landroid/preference/ListPreference;
.source "AudioListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mDialogClosedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedDiaglogEntryIndex:I

.field private mSummaryText:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mDialogClosedListeners:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mDialogClosedListeners:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addDialogClosedListener(Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mDialogClosedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    return-void
.end method

.method protected callDialogClosedListener(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 180
    iget-object v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mDialogClosedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 182
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 183
    iget-object v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mDialogClosedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;

    .line 184
    .local v2, listener:Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;
    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v2, p0, p1}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;->onClose(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v2           #listener:Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, value:Ljava/lang/String;
    const/4 v0, 0x1

    .line 158
    .local v0, ifCallListener:Z
    if-eqz p1, :cond_3

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    if-ltz v3, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    const/4 v0, 0x0

    .line 167
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 168
    const/4 v1, 0x1

    .line 169
    .local v1, ifSet:Z
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    .line 172
    :cond_1
    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->setValue(Ljava/lang/String;)V

    .line 176
    .end local v1           #ifSet:Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->callDialogClosedListener(Ljava/lang/String;)V

    .line 177
    return-void

    .line 163
    :cond_3
    if-nez p1, :cond_0

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mSavedDiaglogEntryIndex:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mSavedDiaglogEntryIndex:I

    iget v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    if-eq v3, v4, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mSavedDiaglogEntryIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 14
    .parameter "builder"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const-string v13, "text"

    const-string v11, "summary"

    .line 95
    invoke-direct {p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->getValueIndex()I

    move-result v1

    iput v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mSavedDiaglogEntryIndex:I

    iput v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    .line 96
    iget v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    if-gez v1, :cond_0

    move v1, v10

    :goto_0
    iput v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    .line 98
    const-string v1, "AudioListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClickedDialogEntryIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 102
    .local v8, mEntries:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v1, v8

    if-ge v7, v1, :cond_2

    .line 104
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v6, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    aget-object v1, v8, v7

    invoke-virtual {v6, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mSummaryText:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v7, v1, :cond_1

    .line 107
    const-string v1, "summary"

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mSummaryText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v7

    invoke-virtual {v6, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 96
    .end local v2           #entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v6           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #i:I
    .end local v8           #mEntries:[Ljava/lang/CharSequence;
    :cond_0
    iget v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    goto :goto_0

    .line 109
    .restart local v2       #entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v6       #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7       #i:I
    .restart local v8       #mEntries:[Ljava/lang/CharSequence;
    :cond_1
    const-string v1, "summary"

    const/4 v1, 0x0

    invoke-virtual {v6, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 114
    .end local v6           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x7f03

    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "text"

    aput-object v13, v4, v10

    const/4 v5, 0x1

    const-string v10, "summary"

    aput-object v11, v4, v5

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 118
    .local v0, a:Landroid/widget/SimpleAdapter;
    new-instance v9, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$1;

    invoke-direct {v9, p0, v8}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$1;-><init>(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;[Ljava/lang/CharSequence;)V

    .line 134
    .local v9, viewBinder:Landroid/widget/SimpleAdapter$ViewBinder;
    invoke-virtual {v0, v9}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 136
    iget v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I

    new-instance v3, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;

    invoke-direct {v3, p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;-><init>(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v1, 0x104000a

    new-instance v3, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$3;

    invoke-direct {v3, p0}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$3;-><init>(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;)V

    invoke-virtual {p1, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    return-void

    .line 114
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public removeDialogClosedListener(Lcom/motorola/android/AudioEffectSettings/AudioListPreference$OnDialogClosedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mDialogClosedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public setSummaryText([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "summaryText"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mSummaryText:[Ljava/lang/CharSequence;

    .line 86
    return-void
.end method
