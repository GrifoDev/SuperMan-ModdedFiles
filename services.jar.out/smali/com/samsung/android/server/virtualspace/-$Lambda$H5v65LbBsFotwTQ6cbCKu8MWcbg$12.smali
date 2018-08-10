.class final synthetic Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;->-$f1:I

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;->-$f0:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$-com_samsung_android_server_virtualspace_VSScreen_28216(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;->-$f0:Z

    iput p2, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;->-$f1:I

    iput-object p3, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;->$m$0()V

    return-void
.end method
