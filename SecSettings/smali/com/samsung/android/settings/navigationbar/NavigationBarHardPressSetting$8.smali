.class Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$8;
.super Ljava/lang/Object;
.source "NavigationBarHardPressSetting.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$8;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "NavigationBarHardPressSetting"

    const-string/jumbo v1, "uncaughtException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$8;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap4(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;Z)V

    return-void
.end method
