.class final enum Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
.super Ljava/lang/Enum;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PenDetachmentOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

.field public static final enum NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;


# instance fields
.field private option:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string/jumbo v1, "ACTION_MEMO"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const-string/jumbo v1, "AIR_COMMAND"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ACTION_MEMO:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->option:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->$VALUES:[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->option:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
