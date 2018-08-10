.class final synthetic Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$-com_samsung_android_server_virtualspace_VSScreen_23508(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;->$m$0()V

    return-void
.end method
