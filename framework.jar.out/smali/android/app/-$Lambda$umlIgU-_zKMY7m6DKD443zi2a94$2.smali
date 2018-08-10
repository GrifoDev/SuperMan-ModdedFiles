.class final synthetic Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-static {v0}, Landroid/app/KeyguardManager$1;->-android_app_KeyguardManager$1-mthref-1(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$2;->$m$0()V

    return-void
.end method
