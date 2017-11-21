.class final synthetic Lcom/android/settings/FallbackHome$-void__init___LambdaImpl0;
.super Ljava/lang/Object;
.source "FallbackHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FallbackHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init___LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/settings/FallbackHome;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/FallbackHome$-void__init___LambdaImpl0;->val$this:Lcom/android/settings/FallbackHome;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FallbackHome$-void__init___LambdaImpl0;->val$this:Lcom/android/settings/FallbackHome;

    invoke-virtual {v0}, Lcom/android/settings/FallbackHome;->-com_android_settings_FallbackHome_lambda$1()V

    return-void
.end method
