.class Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-static {v0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->access$000(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    .line 154
    return-void
.end method
