.class Lcom/motorola/android/AudioEffectSettings/AudioListPreference$1;
.super Ljava/lang/Object;
.source "AudioListPreference.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

.field final synthetic val$mEntries:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$1;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    iput-object p2, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$1;->val$mEntries:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v5, 0x1

    .line 121
    instance-of v1, p1, Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$1;->val$mEntries:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$1;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    #getter for: Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v4}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->access$000(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 124
    check-cast p1, Landroid/widget/CheckedTextView;

    .end local p1
    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v5

    .line 131
    :goto_0
    return v1

    .line 127
    .restart local p1
    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 128
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v5

    .line 129
    goto :goto_0

    .line 131
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
