.class public final Lcom/google/android/gms/appstate/AppStateClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/appstate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->d:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iput-object p3, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    sget-object v0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->f:[Ljava/lang/String;

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/gms/appstate/AppStateClient;
    .locals 7

    new-instance v0, Lcom/google/android/gms/appstate/AppStateClient;

    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->d:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v3, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->e:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->f:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/appstate/AppStateClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/appstate/AppStateClient$1;)V

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/appstate/AppStateClient$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/appstate/AppStateClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateClient$Builder;->f:[Ljava/lang/String;

    return-object p0
.end method
