.class final synthetic Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/os/ConditionVariable;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableBoolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$-com_samsung_android_server_virtualspace_VSScreen_25528(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;->$m$0()V

    return-void
.end method
