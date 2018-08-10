.class final synthetic Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/RecentsSystemUser;

    iget-boolean v1, p0, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->lambda$-com_android_systemui_recents_RecentsSystemUser_3540(Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;->-$f0:Z

    iput-object p2, p0, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;->$m$0()V

    return-void
.end method
