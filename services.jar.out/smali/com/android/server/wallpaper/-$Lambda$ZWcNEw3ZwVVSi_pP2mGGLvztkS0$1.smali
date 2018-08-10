.class final synthetic Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$-com_android_server_wallpaper_WallpaperManagerService$WallpaperConnection_53384(Landroid/content/ComponentName;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/-$Lambda$ZWcNEw3ZwVVSi_pP2mGGLvztkS0$1;->$m$0()V

    return-void
.end method
