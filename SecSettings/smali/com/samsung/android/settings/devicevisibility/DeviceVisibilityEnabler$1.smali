.class Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;
.super Landroid/database/ContentObserver;
.source "DeviceVisibilityEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->-wrap0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V

    return-void
.end method
