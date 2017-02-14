.class final enum Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;
.super Ljava/lang/Enum;
.source "DeleteDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeleteDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DELETE_DRAWABLE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

.field public static final enum DELETE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

.field public static final enum DISABLE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

.field public static final enum UNINSTALL:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->DELETE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    new-instance v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->DISABLE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    new-instance v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->UNINSTALL:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    sget-object v1, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->DELETE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->DISABLE:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->UNINSTALL:Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->$VALUES:[Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;
    .locals 1

    const-class v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;
    .locals 1

    sget-object v0, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->$VALUES:[Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    invoke-virtual {v0}, [Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;

    return-object v0
.end method
