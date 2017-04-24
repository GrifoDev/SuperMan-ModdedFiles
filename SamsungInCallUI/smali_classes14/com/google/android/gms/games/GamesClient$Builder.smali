.class public final Lcom/google/android/gms/games/GamesClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private du:Ljava/lang/String;

.field private dv:I

.field private dw:Landroid/view/View;

.field private final e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->g:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/games"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->f:[Ljava/lang/String;

    const/16 v0, 0x31

    iput v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->dv:I

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->du:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$Builder;->d:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iput-object p3, p0, Lcom/google/android/gms/games/GamesClient$Builder;->e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/gms/games/GamesClient;
    .locals 10

    new-instance v0, Lcom/google/android/gms/games/GamesClient;

    iget-object v1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/games/GamesClient$Builder;->du:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/GamesClient$Builder;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/GamesClient$Builder;->d:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v5, p0, Lcom/google/android/gms/games/GamesClient$Builder;->e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    iget-object v6, p0, Lcom/google/android/gms/games/GamesClient$Builder;->f:[Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/games/GamesClient$Builder;->dv:I

    iget-object v8, p0, Lcom/google/android/gms/games/GamesClient$Builder;->dw:Landroid/view/View;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/games/GamesClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;Lcom/google/android/gms/games/GamesClient$1;)V

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setGravityForPopups(I)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->dv:I

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->dw:Landroid/view/View;

    return-object p0
.end method
