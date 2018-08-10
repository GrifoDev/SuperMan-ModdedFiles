.class final Lcom/android/systemui/statusbar/DeviceState$1;
.super Ljava/lang/Object;
.source "DeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;I)Lcom/sec/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$slotId:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->-get0()[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$slotId:I

    new-instance v2, Lcom/sec/ims/ImsManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$context:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/statusbar/DeviceState$1$1;

    iget v5, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$slotId:I

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/DeviceState$1$1;-><init>(Lcom/android/systemui/statusbar/DeviceState$1;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$slotId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v2, v0, v1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->-get0()[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/DeviceState$1;->val$slotId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method
