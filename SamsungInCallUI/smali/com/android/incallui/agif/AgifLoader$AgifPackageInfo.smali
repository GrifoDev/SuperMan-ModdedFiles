.class public Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgifPackageInfo"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/agif/AgifLoader;

.field public trayIconOff:Landroid/graphics/Bitmap;

.field public trayIconOn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/incallui/agif/AgifLoader;Ljava/lang/String;[B[BLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->this$0:Lcom/android/incallui/agif/AgifLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->packageName:Ljava/lang/String;

    array-length v0, p3

    invoke-static {p3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    array-length v0, p4

    invoke-static {p4, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->artist:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method
