---
date: 2024-12-19
source: https://www.anthropic.com/engineering/building-effective-agents
author: Anthropic
title: Building Effective AI Agents
---

# Building Effective Agents (Anthropic)

Anthropic's research on building effective agents presents valuable insights drawn from their extensive work with teams implementing large language model (LLM) agents across industries. Their findings reveal that the most successful implementations rarely depend on complex frameworks or specialized libraries but instead utilize simple, composable patterns. This comprehensive report examines Anthropic's approach to building effective AI agents, analyzing their definitions, recommended patterns, and practical advice for developers.

## Understanding Agentic Systems

Anthropic acknowledges the term "agent" carries various interpretations across the industry. Some define agents as fully autonomous systems operating independently over extended periods, utilizing various tools to accomplish complex tasks. Others use the term more narrowly to describe implementations following predefined workflows[^1_1].

To provide clarity, Anthropic categorizes these variations under "agentic systems" while drawing an important architectural distinction between workflows and agents. They define **workflows** as systems where LLMs and tools are orchestrated through predefined code paths, whereas **agents** are systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks[^1_1][^1_2].

This distinction emphasizes the level of autonomy granted to the LLM within the system. Workflows follow fixed patterns determined by developers, while agents have greater flexibility to determine their approach to solving problems. However, this definition has received some criticism. The AgentsDecoded analysis suggests that defining agents based on how they operate rather than what they fundamentally are (goal-directed components) may not stand the test of time, arguing that "agent definitions should focus on the what and not the how"[^1_3].

Another perspective describes agents as "systems so intelligent they can plan, adapt, and make decisions independently," acting as highly capable virtual assistants that dynamically figure out how to achieve goals[^1_4]. This focuses on the autonomous decision-making aspect rather than specific implementation details.

## When to Use Agentic Systems

When building applications with LLMs, Anthropic strongly recommends finding the simplest solution possible and only increasing complexity when demonstrably necessary. This pragmatic approach recognizes that agentic systems often trade latency and cost for better task performance – a tradeoff that deserves careful consideration[^1_1][^1_2].

For many applications, optimizing single LLM calls with retrieval and in-context examples proves sufficient. When greater complexity becomes warranted, workflows provide predictability and consistency for well-defined tasks, while agents offer flexibility and model-driven decision-making when needed at scale[^1_1][^1_2].

The decision between implementing a workflow versus an agent should be based on the nature of the task. If the task has clear, predictable steps and requires consistency, a workflow approach typically works better. Conversely, if the task involves open-ended problems where predicting the required number of steps proves difficult, and hardcoding a fixed path isn't feasible, an agent approach may yield better results[^1_1].

The autonomous nature of agents means higher costs and potential for compounding errors. Therefore, Anthropic recommends extensive testing in sandboxed environments alongside appropriate guardrails when implementing agent-based systems[^1_1][^1_2].

## Frameworks and Implementation Approaches

Numerous frameworks exist to simplify the implementation of agentic systems, including LangGraph from LangChain, Amazon Bedrock's AI Agent framework, Rivet (a drag-and-drop GUI LLM workflow builder), and Vellum (another GUI tool for complex workflows)[^1_1][^1_2].

These frameworks provide convenient abstractions for standard low-level tasks such as calling LLMs, defining and parsing tools, and chaining calls together. However, Anthropic cautions that they often create extra layers of abstraction that can obscure the underlying prompts and responses, making debugging more challenging. They might also tempt developers to add unnecessary complexity when simpler solutions would suffice[^1_1].

Anthropic suggests that developers begin by using LLM APIs directly, as many patterns can be implemented in just a few lines of code. If using a framework, they emphasize the importance of understanding the underlying code to avoid incorrect assumptions about what's happening behind the scenes[^1_1][^1_2].

This recommendation has sparked debate, with some arguing that while understanding underlying principles remains important, frameworks save time and reflect community best practices. A balanced approach combining frameworks and APIs may prove more practical for many development scenarios[^1_3].

## Building Blocks of Agentic Systems

### The Augmented LLM

The fundamental building block of agentic systems is what Anthropic calls the "augmented LLM" – a large language model enhanced with capabilities such as retrieval, tools, and memory. Modern models like Claude can actively leverage these capabilities, generating their own search queries, selecting appropriate tools, and determining what information to retain[^1_1][^1_2].

When implementing augmented LLMs, Anthropic recommends focusing on two key aspects: tailoring these capabilities to specific use cases and ensuring they provide an easy, well-documented interface for the LLM. These augmentations transform a basic LLM into a more capable system that can interact with external data sources and tools, providing a foundation for more complex agentic systems[^1_1].

One way to conceptualize the augmented LLM is as "an assistant with instant access to your calendar, emails, and historical data, offering tailored solutions for every task," highlighting the practical benefits of these enhancements[^1_4].

## Workflow Patterns

Anthropic identifies several common workflow patterns that serve as building blocks for more complex agentic systems. These patterns are composable and can be combined to address various use cases.

### Prompt Chaining

Prompt chaining decomposes a task into a sequence of steps, where each LLM call processes the output of the previous one. This approach allows for programmatic checks (or "gates") between steps to ensure the process remains on track[^1_1][^1_2].

This workflow proves ideal for situations where tasks can be easily decomposed into fixed subtasks. The primary goal is to trade latency for higher accuracy by making each LLM call focus on an easier subtask[^1_1]. Examples where prompt chaining demonstrates value include generating marketing copy before translating it into different languages, or writing a document outline, checking that it meets certain criteria, then writing the full document based on the outline[^1_1][^1_2].

By breaking complex tasks into manageable steps, prompt chaining ensures quality control and enables iterative improvements throughout the process. Each step becomes more manageable for the LLM, potentially improving overall performance while allowing for validation at critical junctures in the workflow[^1_1].

### Routing

Routing classifies an input and directs it to a specialized followup task. This workflow enables separation of concerns and allows for more specialized prompts for different types of inputs[^1_1][^1_2].

This pattern works particularly well for complex tasks with distinct categories that benefit from specialized handling, and where classification can be performed accurately, either by an LLM or a more traditional classification model or algorithm[^1_1]. Practical applications include directing different types of customer service queries (general questions, refund requests, technical support) to different downstream processes, prompts, and tools; or routing simpler questions to smaller models while directing more complex inquiries to more capable models to optimize cost and speed[^1_1][^1_2].

The routing workflow functions similar to "a smart dispatcher, directing tasks to the right specialist," ensuring efficient resolution by the most qualified system component[^1_4]. This approach allows developers to optimize each specialized handler without compromising performance across different input types.

### Parallelization

Parallelization involves having LLMs work simultaneously on a task and then aggregating their outputs programmatically. This workflow manifests in two key variations: **sectioning** (breaking a task into independent subtasks run in parallel) and **voting** (running the same task multiple times to get diverse outputs)[^1_1][^1_2].

This approach proves effective when subtasks can be parallelized for speed, or when multiple perspectives or attempts are needed for higher confidence results. For complex tasks with multiple considerations, LLMs generally perform better when each consideration receives focused attention from a separate LLM call[^1_1].

Examples of effective parallelization include implementing guardrails where one model instance processes user queries while another screens them for inappropriate content; reviewing code for vulnerabilities using several different prompts to identify potential issues; or evaluating whether content is inappropriate through multiple prompts assessing different aspects with varying vote thresholds to balance false positives and negatives[^1_1][^1_2].

Parallelization allows systems to tackle multiple subtasks simultaneously, aggregating results quickly for comprehensive analysis while potentially improving both speed and accuracy through specialized focus or consensus mechanisms[^1_1][^1_4].

### Orchestrator-Workers

The orchestrator-workers workflow features a central LLM that dynamically breaks down tasks, delegates them to worker LLMs, and synthesizes their results[^1_1][^1_2].

This pattern is particularly well-suited for complex tasks where subtasks cannot be predicted in advance. The key difference from parallelization lies in its flexibility—subtasks aren't pre-defined but determined by the orchestrator based on the specific input[^1_1]. Applications include coding products that require complex changes across multiple files, or search tasks involving gathering and analyzing information from multiple sources for relevant information[^1_1][^1_2].

A concrete example might involve "planning a product launch by assigning market research to one agent, logistics planning to another, and creative design to a third" with the orchestrator consolidating the outputs into a cohesive plan[^1_4]. This approach combines the benefits of specialized handling with dynamic task allocation based on the specific requirements of each input.

### Evaluator-Optimizer

In the evaluator-optimizer workflow, one LLM call generates a response while another provides evaluation and feedback in a loop, enabling iterative refinement[^1_1][^1_2].

This workflow proves particularly effective with clear evaluation criteria and when iterative refinement provides measurable value. It works well when LLM responses demonstrably improve through feedback and when the LLM itself can provide such feedback. This process mimics the iterative writing process a human writer might use when producing a polished document[^1_1].

Examples where the evaluator-optimizer approach creates value include literary translation where nuances might not be captured initially but where an evaluator LLM can provide useful critiques; or complex search tasks requiring multiple rounds of searching and analysis to gather comprehensive information, with the evaluator determining whether further searches are warranted[^1_1][^1_2].

This back-and-forth interaction ensures that the final output undergoes refinement through multiple iterations of feedback and improvement, potentially leading to higher quality results than could be achieved in a single pass[^1_1][^1_4].

## Autonomous Agents

Agents represent the most sophisticated form of agentic systems, emerging as LLMs mature in key capabilities—understanding complex inputs, reasoning and planning, using tools reliably, and recovering from errors[^1_1][^1_2].

Agents begin with either a command from or interactive discussion with a human user. Once the task becomes clear, they plan and operate independently, potentially returning to the human for further information or judgment. During execution, agents must gain "ground truth" from the environment at each step (such as tool call results or code execution) to assess their progress. They can pause for human feedback at checkpoints or when encountering blockers[^1_1][^1_2].

Despite handling sophisticated tasks, agent implementation often remains straightforward—typically just LLMs using tools based on environmental feedback in a loop. This makes tool design and documentation particularly important for successful agent development[^1_1].

Agents excel with open-ended problems where predicting the required number of steps proves difficult or impossible, and where hardcoding a fixed path isn't feasible. The LLM potentially operates for many turns, requiring some level of trust in its decision-making capabilities. Their autonomy makes agents well-suited for scaling tasks in trusted environments[^1_1][^1_2].

Anthropic provides examples of their own agent implementations, including a coding agent to resolve SWE-bench tasks involving edits across multiple files based on task descriptions, and a "computer use" reference implementation where Claude uses a computer to accomplish tasks[^1_1][^1_2].

## Real-World Applications

Anthropic's work with customers has revealed two particularly promising applications for AI agents that demonstrate the practical value of the patterns discussed: customer support and coding.

### Customer Support

Customer support combines familiar chatbot interfaces with enhanced capabilities through tool integration. This application suits more open-ended agents because support interactions naturally follow a conversation flow while requiring access to external information and actions. Tools can integrate customer data, order history, and knowledge base articles, while actions such as issuing refunds or updating tickets can be handled programmatically. Importantly, success can be clearly measured through user-defined resolutions[^1_1][^1_2].

Several companies have demonstrated confidence in their agents' effectiveness by implementing usage-based pricing models that charge only for successful resolutions, showcasing their belief in the practical value of these systems[^1_1].

### Coding Agents

The software development space has shown remarkable potential for LLM features, with capabilities evolving from code completion to autonomous problem-solving. Agents prove particularly effective in this domain because code solutions are verifiable through automated tests, agents can iterate on solutions using test results as feedback, the problem space is well-defined and structured, and output quality can be measured objectively[^1_1][^1_2].

Anthropic reports their own agents can solve real GitHub issues in the SWE-bench Verified benchmark based solely on pull request descriptions. However, while automated testing helps verify functionality, human review remains crucial for ensuring solutions align with broader system requirements[^1_1][^1_2].

## Tool Design for Agents

Tool design represents a critical aspect of building effective agents. Anthropic emphasizes that tool definitions and specifications deserve as much prompt engineering attention as overall prompts[^1_1][^1_2].

When designing tools for agents, Anthropic suggests giving the model enough tokens to "think" before it commits to a solution path, keeping formats close to what the model has naturally encountered in internet text, and avoiding formatting "overhead" such as maintaining accurate counts of code lines or managing string escaping complexities[^1_1][^1_2].

Anthropic recommends investing as much effort in creating good agent-computer interfaces (ACI) as typically goes into human-computer interfaces (HCI). This includes assessing if tools feel intuitive from the model's perspective, crafting clear parameter names and descriptions (similar to writing excellent documentation for junior developers), testing how the model uses the tools and iterating based on observed mistakes, and "poka-yoke" (mistake-proofing) tools by designing arguments to prevent errors[^1_1][^1_2].

Interestingly, while building their agent for SWE-bench, Anthropic spent more time optimizing their tools than the overall prompt. For example, they discovered the model made mistakes with tools using relative filepaths after moving out of the root directory. By changing the tool to always require absolute filepaths, they achieved flawless usage[^1_1][^1_2].

## Best Practices and Recommendations

Based on their research and experience, Anthropic emphasizes three core principles for implementing effective agents:

1. **Simplicity**: Maintain a straightforward design to ensure maintainability and reduce unexpected errors.
2. **Transparency**: Prioritize transparency by explicitly showing the agent's planning steps to build trust and provide insights into its decision-making process.
3. **Documentation and Testing**: Carefully craft the agent-computer interface through thorough tool documentation and testing[^1_6].

Anthropic emphasizes that success with LLMs isn't about building the most sophisticated system but rather the right system for specific needs. They recommend starting with simple prompts, optimizing them through comprehensive evaluation, and adding multi-step agentic systems only when simpler solutions fall short[^1_1][^1_2].

While frameworks can help developers get started quickly, Anthropic advises not hesitating to reduce abstraction layers and build with basic components when moving to production environments[^1_1]. This approach balances practical development needs with system maintainability and transparency.

## Conclusion

Anthropic's research on building effective agents provides a valuable framework for developers working with LLMs across various applications. Their emphasis on simplicity, composable patterns, and thoughtful tool design offers practical guidance for creating agentic systems that balance capability with reliability and maintainability.

The distinction between workflows (with predefined paths) and agents (with dynamic decision-making) helps clarify when different approaches prove appropriate, while their detailed examination of patterns like prompt chaining, routing, parallelization, orchestrator-workers, and evaluator-optimizer provides a toolkit of strategies developers can adapt to their specific needs.

Rather than advocating for maximum complexity or the latest frameworks, Anthropic encourages a pragmatic approach that starts simple and adds sophistication only when demonstrably beneficial. This philosophy, combined with their insights on tool design and real-world applications, constitutes a practical roadmap for developers seeking to harness the power of LLMs in agentic systems.

As the field continues to evolve, the patterns and principles outlined by Anthropic provide a foundation that developers can build upon, adapting and combining approaches to create effective agents that solve real-world problems while maintaining reliability, transparency, and user trust. The key takeaway remains that effectiveness comes not from implementing the most complex system possible, but from carefully matching the right level of sophistication to each specific use case.

***

### Footnotes

[^1_1]: https://www.anthropic.com/research/building-effective-agents

[^1_2]: https://www.anthropic.com/research/building-effective-agents

[^1_3]: https://www.agentsdecoded.com/p/an-analysis-of-anthropics-guide-to

[^1_4]: https://workforcewise.org/what-can-agentic-ai-really-do-anthropic-opened-up-and-it-clarified-a-lot/

[^1_5]: https://news.ycombinator.com/item?id=42470541

[^1_6]: https://www.youtube.com/watch?v=hYKLA9JPOC8

[^1_7]: https://www.youtube.com/watch?v=JEERoZQbG9k

[^1_8]: https://www.youtube.com/watch?v=Pp3KIt5_gMg

[^1_9]: https://www.youtube.com/watch?v=Dii4fa2a5QQ

[^1_10]: https://www.linkedin.com/pulse/anthropic-agentic-systems-1-prompt-chaining-vikram-ekambaram-pjn5e

[^1_11]: https://www.linkedin.com/pulse/learning-from-anthropic-building-effective-agents-marc-abraham-zw1xe

[^1_12]: https://www.youtube.com/watch?v=0v7TQIh_kes

[^1_13]: https://huggingface.co/blog/Sri-Vigneshwar-DJ/building-effective-agents-with-anthropics-best-pra

[^1_14]: https://www.linkedin.com/pulse/anthropic-agentic-systems-2-routing-vikram-ekambaram-cmxvc

[^1_15]: https://www.linkedin.com/pulse/series-4-building-effective-ai-agents-lessons-from-purushothaman-kx1ec

[^1_16]: https://www.youtube.com/watch?v=Pr8mqF_RXeM

[^1_17]: https://www.forbes.com/sites/jodiecook/2025/02/27/how-to-build-ai-agents-that-actually-work-anthropics-rules-revealed/

[^1_18]: https://www.anthropic.com/news/3-5-models-and-computer-use

[^1_19]: https://www.linkedin.com/pulse/takeaways-building-effective-agents-charles-shen-phd-emba-lsuge

[^1_20]: https://www.reddit.com/r/ClaudeAI/comments/1hiww4y/i_just_read_anthropics_blog_on_building_effective/

[^1_21]: https://www.hkdca.com/wp-content/uploads/2025/02/how-to-build-effective-ai-agents-anthropic.pdf

