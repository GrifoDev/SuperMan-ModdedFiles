.class public final enum Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
.super Ljava/lang/Enum;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

.field public static final enum ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

.field public static final enum RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    const-string v3, "ATTACH"

    invoke-direct {v2, v3, v1, v1}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    new-instance v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    const-string v3, "RENDER"

    invoke-direct {v2, v3, v4, v4}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    aput-object v3, v2, v4

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum const class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->$VALUES:[Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->mValue:I

    return v0
.end method
