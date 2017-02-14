.class Lcom/android/settings/deviceinfo/Status$7;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Status;->createImsService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$7;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$7;->this$0:Lcom/android/settings/deviceinfo/Status;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->-set3(Lcom/android/settings/deviceinfo/Status;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    return-void
.end method
