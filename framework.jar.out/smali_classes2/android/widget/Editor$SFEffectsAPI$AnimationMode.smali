.class public final enum Landroid/widget/Editor$SFEffectsAPI$AnimationMode;
.super Ljava/lang/Enum;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/Editor$SFEffectsAPI$AnimationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

.field public static final enum kAnimLoop:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

.field public static final enum kAnimOnceDestroy:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

.field public static final enum kAnimOnceStayEnd:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

.field public static final enum kAnimOnceStayStart:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

.field public static final enum kAnimStatic:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    const-string/jumbo v1, "kAnimStatic"

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimStatic:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    const-string/jumbo v1, "kAnimLoop"

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimLoop:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    const-string/jumbo v1, "kAnimOnceStayStart"

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimOnceStayStart:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    const-string/jumbo v1, "kAnimOnceStayEnd"

    invoke-direct {v0, v1, v5, v5}, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimOnceStayEnd:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    const-string/jumbo v1, "kAnimOnceDestroy"

    invoke-direct {v0, v1, v6, v6}, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimOnceDestroy:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimStatic:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimLoop:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimOnceStayStart:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimOnceStayEnd:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimOnceDestroy:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    aput-object v1, v0, v6

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/Editor$SFEffectsAPI$AnimationMode;
    .locals 1

    const-class v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    return-object v0
.end method

.method public static values()[Landroid/widget/Editor$SFEffectsAPI$AnimationMode;
    .locals 1

    sget-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    return-object v0
.end method
