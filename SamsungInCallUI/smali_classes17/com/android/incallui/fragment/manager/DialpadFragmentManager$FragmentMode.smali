.class final enum Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;
.super Ljava/lang/Enum;
.source "DialpadFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/DialpadFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

.field public static final enum DEFAULT:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

.field public static final enum EMPTY:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

.field public static final enum QCIF_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

.field public static final enum VGA_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    const-string v1, "VGA_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    const-string v1, "QCIF_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    return-object v0
.end method
