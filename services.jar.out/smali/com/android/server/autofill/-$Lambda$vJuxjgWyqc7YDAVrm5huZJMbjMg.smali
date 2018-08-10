.class final synthetic Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->lambda$-com_android_server_autofill_AutofillManagerService_5890(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;->$m$0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
