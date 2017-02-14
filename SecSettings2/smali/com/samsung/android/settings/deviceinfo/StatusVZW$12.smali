.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;->createImsService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get8(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get11(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-set3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    return-void
.end method
