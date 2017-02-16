.class public Lcom/google/android/gms/plus/PlusClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private g:Ljava/lang/String;

.field private hV:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private hW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hX:[Ljava/lang/String;

.field private hY:[Ljava/lang/String;

.field private hZ:Ljava/lang/String;

.field private ia:Ljava/lang/String;

.field private ib:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionCallbacks"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hV:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iput-object p3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hW:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->ia:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hW:Ljava/util/ArrayList;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/PlusClient;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hW:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hW:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/plus/a;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hX:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hY:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hZ:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->ia:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->ib:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/plus/a;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/plus/PlusClient;

    new-instance v2, Lcom/google/android/gms/internal/bt;

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hV:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/google/android/gms/internal/bt;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/a;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/plus/PlusClient;-><init>(Lcom/google/android/gms/internal/bt;)V

    return-object v1
.end method

.method public clearScopes()Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 0
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hX:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 2
    .param p1, "scopes"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->hW:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs setVisibleActivities([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 0
    .param p1, "actions"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$Builder;->setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;

    return-object p0
.end method
