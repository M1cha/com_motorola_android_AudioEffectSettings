.class Lcom/motorola/android/AudioEffectSettings/AudioListPreference$3;
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
    .line 147
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$3;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/android/AudioEffectSettings/AudioListPreference$3;->this$0:Lcom/motorola/android/AudioEffectSettings/AudioListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/motorola/android/AudioEffectSettings/AudioListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 150
    return-void
.end method
