.class final synthetic Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->lambda$-android_app_ActivityThread_293525(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU$1;->$m$0(Landroid/content/res/Configuration;)V

    return-void
.end method
