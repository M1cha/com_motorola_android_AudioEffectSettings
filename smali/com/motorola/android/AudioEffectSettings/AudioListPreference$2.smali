.class Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;
.super Ljava/lang/Object;
.source "AudioListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    #setter for: Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->access$002(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;I)I

    .line 140
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-virtual {v1}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$2;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    #getter for: Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v2}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->access$000(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->access$100(Lcom/motorola/android/AudioEffectSettings/AudioListPreference;Ljava/lang/Object;)Z

    .line 143
    return-void
.end method
