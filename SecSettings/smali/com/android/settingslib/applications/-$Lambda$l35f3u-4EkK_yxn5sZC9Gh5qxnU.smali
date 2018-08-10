.class final synthetic Lcom/android/settingslib/applications/-$Lambda$l35f3u-4EkK_yxn5sZC9Gh5qxnU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/applications/-$Lambda$l35f3u-4EkK_yxn5sZC9Gh5qxnU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->lambda$-com_android_settingslib_applications_ApplicationsState$BackgroundHandler_47127()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/-$Lambda$l35f3u-4EkK_yxn5sZC9Gh5qxnU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/applications/-$Lambda$l35f3u-4EkK_yxn5sZC9Gh5qxnU;->$m$0()V

    return-void
.end method
