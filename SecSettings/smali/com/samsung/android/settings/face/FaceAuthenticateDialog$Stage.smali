.class final enum Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;
.super Ljava/lang/Enum;
.source "FaceAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

.field public static final enum STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

.field public static final enum STAGE_LOCKOUT_BACKUP:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

.field public static final enum STAGE_NORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

.field public static final enum STAGE_TIME_OUT:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    const-string/jumbo v1, "STAGE_NORMAL_FACE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_NORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    const-string/jumbo v1, "STAGE_ABNORMAL_FACE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    const-string/jumbo v1, "STAGE_LOCKOUT_BACKUP"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_LOCKOUT_BACKUP:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    const-string/jumbo v1, "STAGE_TIME_OUT"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_TIME_OUT:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_NORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_LOCKOUT_BACKUP:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_TIME_OUT:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->$VALUES:[Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->$VALUES:[Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    return-object v0
.end method
