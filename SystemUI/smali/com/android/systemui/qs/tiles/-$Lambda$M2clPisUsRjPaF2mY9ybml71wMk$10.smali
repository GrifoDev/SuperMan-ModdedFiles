.class final synthetic Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->lambda$-com_android_systemui_qs_tiles_WifiCallingTile_28723(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$10;->$m$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
