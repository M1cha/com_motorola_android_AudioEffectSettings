.class Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$1;
.super Landroid/os/Handler;
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
    .line 56
    iput-object p1, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$1;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$1;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v3, v5

    :goto_1
    invoke-static {v2, v3}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->setHeadsetPlugState(Landroid/content/Context;Z)V

    .line 60
    const/4 v0, 0x2

    .line 61
    .local v0, device:I
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    move v1, v5

    .line 62
    .local v1, headsetPlug:Z
    :goto_2
    if-eqz v1, :cond_3

    .line 63
    const/4 v0, 0x0

    .line 67
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$1;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    #calls: Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->onDeviceChanged(I)V
    invoke-static {v2, v0}, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;->access$000(Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;I)V

    goto :goto_0

    .end local v0           #device:I
    .end local v1           #headsetPlug:Z
    :cond_1
    move v3, v4

    .line 59
    goto :goto_1

    .restart local v0       #device:I
    :cond_2
    move v1, v4

    .line 61
    goto :goto_2

    .line 64
    .restart local v1       #headsetPlug:Z
    :cond_3
    iget-object v2, p0, Lcom/motorola/android/AudioEffectSettings/DeviceListActivity$1;->this$0:Lcom/motorola/android/AudioEffectSettings/DeviceListActivity;

    invoke-static {v2}, Lcom/motorola/android/AudioEffectSettings/AudioSettingHAL;->isSpeakerStereo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const/4 v0, 0x1

    goto :goto_3

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
