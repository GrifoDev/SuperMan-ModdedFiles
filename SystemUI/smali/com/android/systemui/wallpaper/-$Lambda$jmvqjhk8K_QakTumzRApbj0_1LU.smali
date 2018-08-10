.class final synthetic Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->lambda$-com_android_systemui_wallpaper_WallpaperEventNotifier_21882(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;->$m$0()V

    return-void
.end method
