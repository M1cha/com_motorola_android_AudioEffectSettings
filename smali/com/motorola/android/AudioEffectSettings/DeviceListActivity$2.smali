.class Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$2;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 77
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$2;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    #getter for: Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->access$100(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, msg:Landroid/os/Message;
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 79
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$2;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    #getter for: Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->access$100(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-object v1, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$2;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    #getter for: Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->access$100(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method
