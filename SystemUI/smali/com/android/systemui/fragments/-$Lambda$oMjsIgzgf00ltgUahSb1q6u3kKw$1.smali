.class final synthetic Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/app/Fragment;

    check-cast p1, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->lambda$-com_android_systemui_fragments_FragmentHostManager_5715(Ljava/lang/String;Landroid/app/Fragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/-$Lambda$oMjsIgzgf00ltgUahSb1q6u3kKw$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
