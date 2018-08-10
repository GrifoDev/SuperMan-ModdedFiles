.class final enum Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
.super Ljava/lang/Enum;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RESULT_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

.field public static final enum INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

.field public static final enum RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

.field public static final enum RESULT_NEW_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

.field public static final enum RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

.field public static final enum RESULT_OLD_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const-string/jumbo v1, "INVALID_VALUE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const-string/jumbo v1, "RESULT_OK"

    invoke-direct {v0, v1, v4, v3}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const-string/jumbo v1, "RESULT_FAIL"

    invoke-direct {v0, v1, v5, v4}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const-string/jumbo v1, "RESULT_OLD_CONCEPT_OK"

    invoke-direct {v0, v1, v6, v5}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OLD_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const-string/jumbo v1, "RESULT_NEW_CONCEPT_OK"

    invoke-direct {v0, v1, v7, v6}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_NEW_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->INVALID_VALUE:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_FAIL:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_OLD_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->RESULT_NEW_CONCEPT_OK:Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    aput-object v1, v0, v7

    sput-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->$VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->value:I

    iput p3, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .locals 1

    const-class v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    return-object v0
.end method

.method public static values()[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;
    .locals 1

    sget-object v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->$VALUES:[Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$RESULT_CODE;->value:I

    return v0
.end method
