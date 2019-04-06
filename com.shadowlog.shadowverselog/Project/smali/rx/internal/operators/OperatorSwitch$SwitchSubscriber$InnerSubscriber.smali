.class final Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final initialRequested:J

.field private requested:J

.field final synthetic this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;IJ)V
    .locals 3
    .param p1, "this$0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
    .param p2, "id"    # I
    .param p3, "initialRequested"    # J

    .prologue
    .line 278
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    .line 279
    iput p2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    .line 280
    iput-wide p3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->initialRequested:J

    .line 281
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J
    .locals 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .prologue
    .line 265
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    return-wide v0
.end method

.method static synthetic access$002(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 265
    iput-wide p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    return-wide p1
.end method

.method static synthetic access$010(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J
    .locals 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .prologue
    .line 265
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    return-wide v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->complete(I)V

    .line 305
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error(Ljava/lang/Throwable;I)V

    .line 300
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    invoke-virtual {v0, p1, v1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emit(Ljava/lang/Object;ILrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)V

    .line 295
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 285
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->initialRequested:J

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requestMore(J)V

    .line 286
    return-void
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 289
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->request(J)V

    .line 290
    return-void
.end method
