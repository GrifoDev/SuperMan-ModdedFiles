.class final Lcom/android/systemui/statusbar/DeviceState$1;
.super Ljava/lang/Object;
.source "DeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/DeviceState$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/DeviceState$1$1;-><init>(Lcom/android/systemui/statusbar/DeviceState$1;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->-set0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->-get0()Lcom/sec/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method
