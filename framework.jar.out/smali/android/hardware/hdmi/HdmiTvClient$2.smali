.class final Landroid/hardware/hdmi/HdmiTvClient$2;
.super Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V
    .locals 0
    .param p1, "val$listener"    # Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    .prologue
    .line 147
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$2;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiInputChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$2;->val$listener:Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 149
    return-void
.end method
