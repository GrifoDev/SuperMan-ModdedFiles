.class final synthetic Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/res/Configuration;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread$ActivityClientRecord;->lambda$-android_app_ActivityThread$ActivityClientRecord_17552(Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/-$Lambda$9I5WEMsoBc7l4QrNqZ4wx59yuHU;->$m$0(Landroid/content/res/Configuration;I)V

    return-void
.end method
