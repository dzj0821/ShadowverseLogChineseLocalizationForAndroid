.class final Lrx/android/app/OperatorConditionalBinding;
.super Ljava/lang/Object;
.source "OperatorConditionalBinding.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ConditionalBinding"


# instance fields
.field private boundRef:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TR;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    .local p1, "bound":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    .line 48
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v0

    iput-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->predicate:Lrx/functions/Func1;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/functions/Func1",
            "<-TR;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    .local p1, "bound":Ljava/lang/Object;, "TR;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lrx/android/app/OperatorConditionalBinding;->predicate:Lrx/functions/Func1;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lrx/android/app/OperatorConditionalBinding;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lrx/android/app/OperatorConditionalBinding;

    .prologue
    .line 34
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lrx/android/app/OperatorConditionalBinding;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lrx/android/app/OperatorConditionalBinding;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    iput-object p1, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lrx/android/app/OperatorConditionalBinding;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/android/app/OperatorConditionalBinding;

    .prologue
    .line 34
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->predicate:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/app/OperatorConditionalBinding;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/android/app/OperatorConditionalBinding$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/android/app/OperatorConditionalBinding$1;-><init>(Lrx/android/app/OperatorConditionalBinding;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

.method getBoundRef()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/android/app/OperatorConditionalBinding;, "Lrx/android/app/OperatorConditionalBinding<TT;TR;>;"
    iget-object v0, p0, Lrx/android/app/OperatorConditionalBinding;->boundRef:Ljava/lang/Object;

    return-object v0
.end method
