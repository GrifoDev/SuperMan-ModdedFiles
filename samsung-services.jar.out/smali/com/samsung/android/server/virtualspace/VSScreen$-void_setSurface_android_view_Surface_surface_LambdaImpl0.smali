.class final synthetic Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;
.super Ljava/lang/Object;
.source "VSScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_setSurface_android_view_Surface_surface_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/samsung/android/server/virtualspace/VSScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;->val$this:Lcom/samsung/android/server/virtualspace/VSScreen;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$-void_setSurface_android_view_Surface_surface_LambdaImpl0;->val$this:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->-com_samsung_android_server_virtualspace_VSScreen_lambda$3()V

    return-void
.end method
