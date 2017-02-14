.class public final enum Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;
.super Ljava/lang/Enum;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconBgScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

.field public static final enum ALL:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

.field public static final enum NOTHING:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

.field public static final enum THIRD_PARTY:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->ALL:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    const-string v1, "THIRD_PARTY"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->THIRD_PARTY:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->NOTHING:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->ALL:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->THIRD_PARTY:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->NOTHING:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->$VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

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

    iput p3, p0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;
    .locals 1

    const-class v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;
    .locals 1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->$VALUES:[Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    invoke-virtual {v0}, [Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->value:I

    return v0
.end method
