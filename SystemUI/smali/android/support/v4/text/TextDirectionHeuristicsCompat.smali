.class public final Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;,
        Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final LOCALE:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LOCALE:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
